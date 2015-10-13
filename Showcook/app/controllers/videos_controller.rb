class VideosController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@my_videos = current_user.videos
		@videos = current_user.videos
		@categories = Category.order("title ASC")
		
	end

	def search_videos
		@q = Video.ransack(params[:q])
  		@videos = @q.result(distinct: true)
	end

	def new
		@my_videos = current_user.videos
		@user = current_user
		@video = Video.new
		@categories = Category.order("title ASC")

	end

	def update
		@my_videos = current_user.videos
		@categories = Category.order("title ASC")
		@video = Video.find(params[:id])
		id = current_user.id
		user = @video.user
		if @video.update(video_params)
			redirect_to user_video_path(id, @video.id )
		else
			render :edit
		end
	end

	def create 
		@my_videos = current_user.videos
		id = current_user.id
		@video = Video.new(video_params)
		@video.user_id = id

		if @video.save
			redirect_to user_video_path(id, @video.id )
		else
			render :new
		end
	end

	def edit
		@my_videos = current_user.videos
		@video = Video.find(params[:id])
		@user = current_user
		@categories = Category.order("title ASC")
	end

	def destroy
		video = Video.find(params[:id])
		video.destroy
		redirect_to user_videos_path(video.user)

	end

	def show
		@my_videos = current_user.videos
		@categories = Category.order("title ASC")
		@video = Video.find(params[:id])
		@category = @video.category_id
		id = current_user.id
		@user = @video.user
		@videos = @user.videos
		video_id = @video.id 
		@comments = Comment.where(video_id: video_id).order("created_at DESC")
	end

	private

	def video_params
		params.require(:video).permit(:title, :recipe, :link_url, :category_id, :photo, :description, :stars)
	end
end
