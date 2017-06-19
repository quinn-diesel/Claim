class UsersController < ApplicationController
  def create
    @user = User.create user_params
      if @user.id.present?
        redirect_to user_path(@user.id)
      else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find params["id"]
  end

  def index
    @user = User.all
  end

  def update
    @user = @current_user

    @usr.update user_params
    redirect_to user_path( params["id"] )
  end

  private
  def user_params
    params.require(:user).permit(:name, :photo)
  end

end
