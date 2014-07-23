class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = current_user.posts.find(params[:id])
    post.update(post_params)
    redirect_to post
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