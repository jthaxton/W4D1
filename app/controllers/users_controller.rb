class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(params.require(:user).permit(:email, :username))
    user.save!
    render json: user
  end
end
