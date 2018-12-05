class QuestionsController < ApplicationController

  before_action :set_question, only: [ :show, :edit, :update, :destroy ]

  def index
    @questions = Question.all
    @schools = School.all
  end

  def show
  end

  def new
    @question = Question.new
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
    params.require(:question).permit(:title, :description, :question_type)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
