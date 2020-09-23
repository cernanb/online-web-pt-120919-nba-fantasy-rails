class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      render json: { status: 201, user: user, logged_in: true}
    else
      render json: { status: 500, message: 'There was an error in creating an account'}
    end
  end


  private
  params.require(:user).permit(:email, :password, :password_confirmation)
end