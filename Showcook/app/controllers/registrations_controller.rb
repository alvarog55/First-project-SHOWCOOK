class RegistrationsController < Devise::RegistrationsController
def new
    @categories = Category.order("title ASC")
    super
  end

  def create
    super
  end

  def edit
    @my_videos = current_user.videos
  	@categories = Category.order("title ASC")
  	super
  end

  def update
    @categories = Category.order("title ASC")
    super
    
  end

end
