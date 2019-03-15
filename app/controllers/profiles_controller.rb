class ProfilesController < ApplicationController

  before_action :set_profile, only: [ :show, :voted, :edit, :update, :destroy ]

  def index
    # @profiles = Profile.all
    @profiles = policy_scope(Profile)
  end

  def show
    @questions = Question.where(profile_id: @profile.id)
    @responses = Response.all
  end

  def new
    @profile = Profile.new
    authorize @profile
  end

  # def voted(question)
  #   @profile.voted = 1
  #   @profile.save!
  # end

  def create
    @user = User.find(current_user.id)
    @profile = Profile.new(params_profile)
    @profile.user = @user
    @profile.grade = "citizen"
    authorize @profile
    # when the user create his profile, he starts with 100xp (line below)
    @profile.xp = 100
    if @profile.save
      # after signup and profile created, user is redirect to question's index
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @profile.update(params_profile)
    if @profile.save
      redirect_to profile_path(@user)
    else
      render :new
    end
  end

  def destroy
    @profile.destroy
  end

  private

  def params_profile
    params.require(:profile).permit(:city, :username, :age, :sexe, :role, :school_id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
    authorize @profile
  end
end
