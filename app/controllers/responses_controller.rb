class ResponsesController < ApplicationController

  before_action :set_response, only: [ :show, :edit, :update, :destroy ]

  def show
  end

  def new
    @question = Question.find(params[:question_id])
    @response = Response.new
  end

  def create
    @response = Response.new(params_response)
    @user = User.find(current_user.id)
    @profile = Profile.find(@user.id)
    @question = Question.find(params[:question_id])
    @response.profile = @profile
    @response.question = @question
    @response.upvote = 0
    @response.downvote = 0
    if @response.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @response.destroy
  end

  private

  def params_response
    params.require(:response).permit(:description)
  end

  def set_response
    @response = Response.find(params[:id])
  end
end
