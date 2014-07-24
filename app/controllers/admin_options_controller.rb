class AdminOptionsController < ApplicationController
  def index
    @region = Region.new
    @regions = Region.order("name ASC")
    @category = Category.new
    @categories = Category.order("name ASC")
  end
end