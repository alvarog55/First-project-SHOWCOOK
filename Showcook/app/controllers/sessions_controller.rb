class SessionsController < Devise::SessionsController

  def new
    @categories = Category.order("title ASC")
    super
  end

  def create
    super
  end
end