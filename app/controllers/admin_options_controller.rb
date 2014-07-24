class AdminOptionsController < ApplicationController
  def index
    @region = Region.new
    @regions = Region.order("name ASC")
    @categories = Category.order("name ASC")
    @posts = Post.where(spam: true)
  end
end