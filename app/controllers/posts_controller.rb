class PostsController < ApplicationController
  before_action :find_post, except: [:index, :new, :create]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      flash[:error] = "Failed to create post."
      redirect_to new_post_path
    end
  end

   def show
      @post = Post.find(params[:id])
  end

   def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      flash[:error] = "Failed to update post."
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post deleted."
    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :author)
  end
end


