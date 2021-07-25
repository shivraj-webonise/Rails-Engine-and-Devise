class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    if user_signed_in?
      @posts = current_user.posts
    else
      @posts = Post.where(:published => true)
    end
  end

  def show()end

  def new
    @post = current_user.posts.build
  end

  def edit()end

  def create
    @post = current_user.posts.create(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :author, :image_url, :published, :content)
  end
end
