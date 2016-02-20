class PostsController < ApplicationController
  before_filter :authenticate, :except => [ :index, :show ]

  def index
    @posts = Post.all
  end
  
  def new
     @new_post = Post.new
  end
  
  def show
   @post = Post.find(params[:id])
  end
  
  def create
 			@post = Post.create(post_params)
    if @post.save
      redirect_to '/posts' 
    else
   
      render 'new'
    end
  end
  
  private
	
	def post_params
 			params.require(:post).permit(:title, :body , :comment)
        end
end

def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "admin"
    end
end
