class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
    @categories = Category.order("name ASC")
    @regions = Region.order("name ASC")
  end

  def create
    post = current_user.posts.new(post_params)
    if post.save
      redirect_to post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @categories = Category.order("name ASC")
    @regions = Region.order("name ASC")
  end

  def update
    post = current_user.posts.find(params[:id])
    post.update(post_params)
    redirect_to post
  end

  def destroy
    post = current_user.posts.find(params[:id])
    post.destroy
    redirect_to post.categories
  end

  private

  def post_params
    params.require(:post).
      permit(
        :title,
        :description,
        :image_url,
        :category_id,
        :region_id,
      )
  end
end
