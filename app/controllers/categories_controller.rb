class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:region_id])
    @posts = Post.where(category_id: @category.id)
  end

  def new
    @category = Category.new
  end

  def create
    category_params_with_region_id = category_params.merge(region_id: params[:region_id])
    category = Category.new(category_params_with_region_id)

    if category.save
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
      )
  end
end
