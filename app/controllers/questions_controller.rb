class QuestionsController < ApplicationController

  before_action :set_question, only: [ :show, :edit, :update, :destroy ]

  def index
    @categories = Category.all
    @schools = School.all
    @responses = Response.all
    if params.has_key?(:category_id)
      @category_id = Category.find_by_id(params[:category_id])
      @questions = Question.where(category_id: @category_id)
    else
      @questions = Question.all
    end
  end

  def show
  end

  def new
    @question = Question.new
  end

  def upvote
    @question = Question.find(params[:format].to_i)
    @user = User.find(current_user.id)
    # line below: find the profile of the owner of the question upvoted to add point to his XP.
    @profile = Profile.find(@question.profile_id)
    a = 0
    @question.users_array.each do |user_and_question|
      if user_and_question[0].to_i == @user.id && user_and_question[1].to_i == @question.id
        a += 1
      end
    end
    if a == 0
      @question.upvote += 1
      @question.users_array << [@user.id.to_i, @question.id.to_i]
      @profile.xp += 50
      @profile.save!
      @question.save!
      redirect_to questions_path
    else
      redirect_to questions_path
    end
  end

  def create
    @user = User.find(current_user.id)
    @question = Question.new(params_question)
    @profile = Profile.find(@user.id)
    @question.profile = @profile
    @question.upvote = 0
    @profile.xp += 100
    @profile.save!
    # when a user post a question, he give 100 points of xp to his school
    @school = School.find(@profile.school_id)
    @school.xp += 100
    @school.save!
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @question.update(params_question)
    if @question.save
      redirect_to questions_path(@question)
    else
      render :new
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private

  def params_question
    params.require(:question).permit(:description, :category_id)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
