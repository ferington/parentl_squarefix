class User::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user.id = curent_user.id
    @post.save
    redirect_to post_path
  end

  def index
  end

  def show
  end

  def edit
  end

  def post_params
    params.require(:post).permit(:title, :boby)
  end
end
