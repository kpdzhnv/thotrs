class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
  end

  def new
  end

  def create
    @users = User.all
    @user = User.new(params[:user])

    @user.save
    redirect_to @user
  end

  # private
  #   def user_params
  #     params.require(:user).permit(:name, :email)
  #   end
end