class AdminOptionsController < ApplicationController
  def index
    @region = Region.new
    @regions = Region.all.order('name ASC')
    @category = Category.new
    @categories = Category.all.order('name ASC')
  end
end