class PostsController < ApplicationController
  def new
    @posts = Post.new
  end

  

end