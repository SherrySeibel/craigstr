class SpamsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.mark_as_spam
    redirect_to @post
  end
end