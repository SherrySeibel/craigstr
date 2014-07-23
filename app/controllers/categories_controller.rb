class CategoriesController < ApplicationController
  def index
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to :dashboard
    else
      @region = Region.new
      render "admin_options/index"
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
