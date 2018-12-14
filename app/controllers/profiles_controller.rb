class ProfilesController < ApplicationController

  before_action :set_profile, only: [ :show, :voted, :edit, :update, :destroy ]

  def index
    profiles = Profile.all
  end

  # def index_by_school
  # end

  def show
  end

  def new
    @profile = Profile.new
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
    if params["profile"]["school_id"] == "1"
      @school = School.find(1)
    end
    if params["profile"]["school_id"] == "2"
      @school = School.find(2)
    end
    if params["profile"]["school_id"] == "3"
      @school = School.find(3)
    end
    if params["profile"]["school_id"] == "4"
      @school = School.find(4)
    end
    @profile.school = @school
    if @profile.save
      # after signup and profile created, user is redirect to show of his school (commun room)
      redirect_to school_path(@school)
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
    params.require(:profile).permit(:city, :username, :age, :sexe, :school_id, :role, :grade)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
