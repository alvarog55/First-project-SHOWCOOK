class CategoriesController < ApplicationController
	before_action :authenticate_user!
	def index
		@categories = Category.order("title ASC")
		@my_videos = current_user.videos
	end

	def show
		@my_videos = current_user.videos
		id = params[:id]
		@category = Category.find(id)
		@videos = @category.videos
		@categories = Category.order("title ASC")
		if @category.nil?
			render :no_category_found
		else
			render :show
		end
	end
end
