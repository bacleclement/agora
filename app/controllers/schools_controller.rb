class SchoolsController < ApplicationController
  def index
  end

  def show
    @school = School.find(Profile.find(current_user.id).school_id)
    p = Profile.all
    @array = []
    p.each do |e|
      if e.school_id == @school.id
        @array << [e.username, e.grade]
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
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
