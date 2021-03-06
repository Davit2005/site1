class PostsController < ApplicationController
	def index
		
	end	
	def new
		@post = Post.new
	end	
	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post 
	end
	private 
	def post_params
		params.require(:post).permit(:title, :body, :subtitle, :body1)
	end
end
