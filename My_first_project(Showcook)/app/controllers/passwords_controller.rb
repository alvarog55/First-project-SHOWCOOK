class PasswordsController < Devise::PasswordsController
def new
    @categories = Category.order("title ASC")
    super
  end

  def create
  	@categories = Category.order("title ASC")
    super
  end
end