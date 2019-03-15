class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if current_user
      redirect_to questions_path
    end
    @categories = Category.all
    @schools = School.all
    @responses = Response.all
    if params.has_key?(:category_id)
      @category_id = Category.find_by_id(params[:category_id])
      @questions = Question.where(category_id: @category_id)
    else
      @questions = Question.all
    end

    @school_sorted_by_xp = @schools.all.sort_by {|a| a.xp}.reverse
    a = 1
    @school_sorted_by_xp.each do |school|
      school.position = a
      school.save!
      a += 1
    end
  end
end
