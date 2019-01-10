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
    @profile.xp += 50
    if @response.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def upvote
    @response = Response.find(params[:format].to_i)
    @user = User.find(current_user.id)
    a = 0
    @response.users_array.each do |user_and_response|
      if user_and_response[0].to_i == @user.id && user_and_response[1].to_i == @response.id
        a += 1
      end
    end
    if a == 0
      @response.upvote += 1
      @response.users_array << [@user.id.to_i, @response.id.to_i]
      @response.save!
      redirect_to questions_path
    else
      redirect_to questions_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @response.destroy
    redirect_to questions_path
  end

  private

  def params_response
    params.require(:response).permit(:description)
  end

  def set_response
    @response = Response.find(params[:id])
  end
end
