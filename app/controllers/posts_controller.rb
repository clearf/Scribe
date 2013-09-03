class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def topic
  end

end
