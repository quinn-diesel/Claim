class UsersController < ApplicationController

  ### Check the user login
  before_action :get_user,           only: [ :show, :edit, :update ]
  # before_action :check_if_admin,  only: [ :index ]

  before_action :check_if_logged_in, only: [ :moutain_create, :update_mountains ]


  # create the right path
  def get_user
    @user = User.find params["id"]
  end


  ### CRUD Working ###
  def create
    @user = User.new(user_params)

    if params[:file].present?
      # perform upload to cloundinary
      req = Cloudinary::Uploader.upload params[:file]
      @user.photo = req['public_id']
    end

    if @user.save
      session[:user_id] = @user.id  # perform login (set session)
      redirect_to user_path(@user.id)   # /users/17
    else
      render :new
    end

  end

  def destroy
  end

  def edit
    @user = User.find params["id"]
  end

  def new
    @user = User.new
  end

  def show
    #now in the before action
    # @user = User.find params["id"]
    @user = User.find params[ "id" ]
    @mountains = Mountain.all
    # @mountains = Mountain.all

    if @current_user.present?
      # raise 'hell'
      #return the array of all the users mountains
      @user_mountains = @current_user.mountains.ids

      #map all of the mountain ids
      mountain_ids = @mountains.map do |m|
        m.id
      end

      #display only the mountains which are remaining
      @user_remaining_mountains = @mountains.where.not(id: @user_mountains)
        end

    end


  def index
    @users = User.all
  end


  def update_mountains
    mountains = params[:mountain][:mountain_id]
    @current_user.mountains << Mountain.where(id: mountains) # add all selected mountains to this user's list

    redirect_to user_path(params[:user_id])
  end

  def update
    @user = User.find params["id"]


    if params[:file].present?
      # perform upload to cloundinary
      req = Cloudinary::Uploader.upload params[:file]
      @user.photo = req['public_id']
    end


    @user.update user_params
    redirect_to user_path( params["id"] )

  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :photo, :password, :password_confirmation, :nationality, :age, :ski_type, :nickname)
  end



end
