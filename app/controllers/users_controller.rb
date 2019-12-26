class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def show
    # @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:name, :password))
    # @user = User.new(params[:user])

    session[:user_id] = @user.id
    @user.save

    redirect_to '/welcome'
  end

end
