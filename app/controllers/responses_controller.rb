class ResponsesController < ApplicationController

  before_action :set_response, only: [ :show, :edit, :update, :destroy ]

  def show
    authorize @response
  end

  def new
    @question = Question.find(params[:question_id])
    @response = Response.new
    authorize @response
  end

  def create
    @response = Response.new(params_response)
    @user = User.find(current_user.id)
    @profile = Profile.find(@user.id)
    @question = Question.find(params[:question_id])
    @response.profile = @profile
    @response.question = @question
    @response.upvote = 0
    # add xp to the owner of the response
    @profile.xp += 50
    authorize @response

    @profile.save!
    # add xp to the school
    @school = School.find(@response.school_id)
    @school.xp += 50

    @school.save!

    if @response.save!
      redirect_to questions_path
    else
      render :new
    end
  end

  def upvote
    @response = Response.find(params[:format].to_i)
    @user = User.find(current_user.id)
    # line below: find the profile of the owner of the response upvoted to add point to his XP.
    @profile = Profile.find(@response.profile_id)
    a = 0
    authorize @response
    @response.users_array.each do |user_and_response|
      if user_and_response[0].to_i == @user.id && user_and_response[1].to_i == @response.id
        a += 1
      end
    end
    if a == 0
      @response.upvote += 1
      @response.users_array << [@user.id.to_i, @response.id.to_i]
      @profile.xp += 50
      @profile.save!
      @response.save!
      redirect_to questions_path
    else
      redirect_to questions_path
    end
  end

  def edit
  end

  def update
    authorize @response
  end

  def destroy
    @response.destroy
    authorize @response
    redirect_to questions_path
  end

  private

  def params_response
    params.require(:response).permit(:description, :school_id)
  end

  def set_response
    @response = Response.find(params[:id])
  end
end
