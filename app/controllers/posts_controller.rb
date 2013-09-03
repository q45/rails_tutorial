class PostsController < ApplicationController

	def new	

	end

	def create
		render text: param[:post].inspect
	end
end	
