class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.order("created_at ASC")
		@categories = Category.order("title ASC")
		@my_videos = current_user.videos
	end

	def home
		@videos = Video.order("created_at ASC")
		@my_videos = current_user.videos
		@categories = Category.order("title ASC")
		@category = Category.all
		
	end

	def account
    	@user = current_user
    	@categories = Category.order("title ASC")
    	@my_videos = current_user.videos
  	end

  	def show
		@my_videos = current_user.videos
		@user = User.find(params[:id])
		@videos = @user.videos
		@categories = Category.order("title ASC")
	end

	def purchase_video
		@my_videos = current_user.videos
		@categories = Category.order("title ASC")
		@user = current_user
		@video = Video.find(params[:id])
		@purchased_videos = []
		@purchased_video.push(@video)
	end
end
