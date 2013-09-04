class PostsController < ApplicationController


	def index
		@posts = Post.all
	end

	def new

	end

	def create
		@post = Post.new(params[:post].permit(:title, :text))

		if @post.save
			redirect_to @post
		else
			@error = "Please make sure your title is 5 characters long"
			@test = true
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	private
	def post_params
		params.require(:post).permit(:title, :text)
	end

end	
