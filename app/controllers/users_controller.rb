class UsersController < ApplicationController

  ### Check the user login
  before_action :get_user,        only: [ :show, :edit, :update ]
  # before_action :check_if_admin,  only: [ :index ]

  before_action :check_if_logged, only: [ :moutain_create ]


  # create the right path
  def get_user
    @user = User.find params["id"]
  end


  ### CRUD Working ###
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
    #now in the before action
    # @user = User.find params["id"]
  end

  def index
    @users = User.all
  end

  def update
    @user = @current_user

    @user.update user_params
    redirect_to user_path( params["id"] )
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :photo, :password, :password_confirmation)
  end

end
