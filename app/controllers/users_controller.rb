class UsersController < ApplicationController
  def create
    @user = User.create user params
  end

  def destroy
  end

  def edit
  end

  def new
    @User = User.new
  end

  def show
  end

  def index
    @user = User.all
  end

  def update
    @user = @current_user
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end

end
