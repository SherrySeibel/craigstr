class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:region_id])
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
