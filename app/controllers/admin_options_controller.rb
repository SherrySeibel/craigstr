class AdminOptionsController < ApplicationController
  def index
    @region = Region.new
    @category = Category.new
  end
end