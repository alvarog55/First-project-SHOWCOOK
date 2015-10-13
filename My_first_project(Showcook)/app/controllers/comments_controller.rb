class CommentsController < ApplicationController
	before_action :authenticate_user!
	def index
		@video = Video.last
		id = @video.id 
		@comments = Comment.where(video_id: id)
		@my_videos = current_user.videos
		@categories = Category.order("title ASC")
	end
end
