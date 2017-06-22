class MountainsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def create
    @mountain = Mountain.new(mountain_params)

    if params[:file].present?
      # perform upload to cloundinary
      req = Cloudinary::Uploader.upload params[:file]
      @mountain.photo = req['public_id']
    end

    if @mountain.save
      session[:mountain_id] = @mountain.id
      redirect_to mountain_path(@mountain.id)
    else
      render :new
    end
  end

  def update
    @mountain = Mountain.find params["id"]


    if params[:file].present?
      # perform upload to cloundinary
      req = Cloudinary::Uploader.upload params[:file]
      @mountain.photo = req['public_id']
    end

    @mountain.update mountain_params
    redirect_to mountain_path( params["id"] )

  end

  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find params[ "id" ]
    @runs = Run.all
    # @runs = Runs.where(mountain: @mountain)
    # @user_runs = Run.where mountain: @mountain, user: @current_user if @current_user.present?
    if @current_user.present?
      @user_runs = @current_user.runs.where(mountain: @mountain)

      user_run_ids = @user_runs.map do |r|
        r.id
      end

      @user_remaining_runs = @mountain.runs.where.not(id: user_run_ids)

      # puts "+"*50
      # puts @user_remaining_runs.pluck :name

    end
  end

  def update_runs

    # raise 'hell'

    runs = params[:run][:run_id]
    @current_user.runs << Run.where(id: runs) # add all selected runs to the user's list

    redirect_to mountain_path(params[:mountain_id])
  end


  def edit
    @mountain = Mountain.find params[ "id" ]
  end

  def new
    @mountain = Mountain.new
  end

  def destroy
  end

  private
  def mountain_params
    params.require(:mountain).permit(:name, :size, :number_of_runs, :map, :highest_point, :number_of_bars)
  end


end
