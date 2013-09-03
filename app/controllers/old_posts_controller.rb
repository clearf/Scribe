class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(topic: params[:topic])
    @post.save
    # else
    #   redirect_to post_path
    #   flash[:notice] = "Try again!"
    # end
  end

  def show
    @post = Post.find(params[:id])
  end

end
