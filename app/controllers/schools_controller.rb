class SchoolsController < ApplicationController

  before_action :set_school, only: [ :show, :edit, :update, :destroy ]

  def index
    @schools = policy_scope(School)
  end

  def show
    @school = School.find(Profile.find(current_user.id).school_id)
    p = Profile.all
    @array = []
    authorize @school
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

  def position_of_school
    @schools = policy_scope(School)
    @school_sorted_by_xp = @schools.all.sort_by {|a| a.xp}
    a = 1
    @school_sorted_by_xp.each do |school|
      school.position == a
      a += 1
    end
  end

  def new
    @school = School.new
    authorize @school
  end

  def create
    @user = User.find(current_user.id)
    @profile = Profile.find(@user.id)
    @school = School.new(params_school)
    @school.xp = 0
    @profile.xp = 300
    authorize @school
    if @school.save
      redirect_to school_path(@school)
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @school
  end

  def destroy
    authorize @school
  end

  private

  def params_school
    params.require(:school).permit(:title, :description)
  end

  def set_school
    @school = School.find(params[:id])
  end
end
