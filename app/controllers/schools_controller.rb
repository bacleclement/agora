class SchoolsController < ApplicationController

  before_action :set_school, only: [ :show, :edit, :update, :destroy ]

  def index
    @schools = School.all
  end

  def show
    @school = School.find(Profile.find(current_user.id).school_id)
    p = Profile.all
    @array = []
    p.each do |e|
      if e.school_id == @school.id
        @array << [e.username, e.grade, e.role]
      end
    end
    @master = []
    p.each do |e|
      if e.school_id == @school.id && e.grade == "master"
        @master << e
      end
    end
    @teachers = []
    p.each do |e|
      if e.school_id == @school.id && e.grade == "teacher"
        @teachers << e
      end
    end
  end

  def new
    @school = School.new
  end

  def create
    @user = User.find(current_user.id)
    @profile = Profile.find(@user.id)
    @school = School.new(params_school)
    @school.xp = 0
    @profile.xp = 300
    if @school.save
      redirect_to school_path(@school)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def params_school
    params.require(:school).permit(:title, :description)
  end

  def set_school
    @school = School.find(params[:id])
  end
end
