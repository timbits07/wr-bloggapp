class PostsController < ApplicationController
  def index
    respond_to do |format|
      format.html { @posts = Post.all.reverse }
      format.json { @posts = Post.all.reverse }
    end
  end

  def new
  	@post = Post.new
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def show
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
			redirect_to posts_path	
		else
      render :action => 'new'
    end
  end

  private
  def post_params
  	params.require(:post).permit(:title, :body, :picture)
  end
end
