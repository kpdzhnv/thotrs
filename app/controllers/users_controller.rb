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

end
