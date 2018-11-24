class ProfilesController < ApplicationController

  before_action :set_profile, only: [ :show, :edit, :update, :destroy ]

  def index
    profiles = Profile.all
  end

  # def index_by_school
  # end

  def show
    profile = Profile.find()
  end

  def new
    @profile = Profile.new
  end

  def create
    @user = User.find(current_user.id)
    @profile = Profile.new(params_profile)
    @profile.user = @user
    if @profile.save
      redirect_to profile_path(@user)
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
    params.require(:profile).permit(:city, :username, :age, :sexe, :school, :role, :grade)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
