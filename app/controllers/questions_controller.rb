class QuestionsController < ApplicationController

  before_action :set_question, only: [ :show, :edit, :update, :destroy ]

  # find a way to keep data save even if user refresh page
  # USERS_AND_QUESTIONS = []

  def index
    @questions = Question.all
    @schools = School.all
    @responses = Response.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def upvote
    @question = Question.find(params[:format].to_i)
    @user = User.find(current_user.id)
    a = 0
    @question.users_array.each do |user_and_question|
      if user_and_question[0].to_i == @user.id && user_and_question[1].to_i == @question.id
        a += 1
      end
    end
    if a == 0
      @question.upvote += 1
      @question.users_array << [@user.id.to_i, @question.id.to_i]
      @question.save!
      redirect_to questions_path
    else
      redirect_to questions_path
    end
  end

  def create
    @user = User.find(current_user.id)
    @question = Question.new(params_question)
    @profile = Profile.find(@user.id) #to confirm?
    @question.profile = @profile
    @question.upvote = 0
    @question.downvote = 0
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
  end

  private

  def params_question
    params.require(:question).permit(:description, :question_type)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
