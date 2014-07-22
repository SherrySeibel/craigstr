class PostsController < ApplicationController
  def new
    @posts = Post.new
  end

  def create
    @posts = current_user.posts.new(post_params)
    if @posts.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).
      permit(
        :title,
        :description,
        :image_url,
        :category,
        :region,
      )
  end
end