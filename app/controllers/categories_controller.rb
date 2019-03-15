class CategoriesController < ApplicationController

  before_action :set_category, only: [ :show, :edit, :update, :destroy ]

  def index
    @categories = policy_scope(Category)
  end

  def show
    authorize @category
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params_category)
    authorize @category
    if @category.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @category
  end

  def destroy
    authorize @category
  end

  private

  def params_category
    params.require(:category).permit(:name, :description)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
