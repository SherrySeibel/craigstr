class AdminOptionsController < ApplicationController
  def index
    @region = Region.new
    @regions = Region.order("name ASC")
    @categories = Category.order("name ASC")
  end
end