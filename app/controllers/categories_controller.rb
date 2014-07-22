class CategoriesController < ApplicationController
  def index
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to :dashboard 
    else
      render :index
    end
  end

  private

  def category_params
    params.require(:category).
      permit(
        :name,
        :region_id,
      )
  end
end