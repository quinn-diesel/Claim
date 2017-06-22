class RunsController < ApplicationController
  def create
    @run = Run.new(run_params)

    # @mountain = Mountain.all

    if params[:file].present?
      # perform upload to cloundinary
      req = Cloudinary::Uploader.upload params[:file]
      @run.image = req['public_id']
    end

    @run.mountain_id = params[:mountain_id]

    # raise 1

    if @run.save
      session[:run_id] = @run.id
      redirect_to run_path(@run.id)
    else
      render :new
    end

  end

  def update
    @run = Run.find params["id"]

    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:title]
      @runs.image = req['public_id']
    end

    @run.update run_params
    redirect_to mountain_path(@run.mountain)
  end


  def index
    @runs = Run.all
  end

  def show
    @run = Run.find params[ "id" ]
  end

  def edit
    @run = Run.find params[ "id" ]
    # @mountain = Mountain.find( params[:mountain_id] )
  end

  def new
    @run = Run.new
    @mountain = Mountain.find( params[:mountain_id] )
    # raise 'hell'
  end

  def destroy
  end

  private
  def run_params
    params.require(:run).permit(:name, :id, :length, :difficulty, :number_of_deaths, :claim, :image)
  end


end
