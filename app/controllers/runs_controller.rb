class RunsController < ApplicationController
  def create
    @run = Run.new(run_params)

    if params[:file].present?
      # perform upload to cloundinary
      req = Cloudinary::Uploader.upload params[:file]
      @run.photo = req['public_id']
    end

    if @run.save
      session[:run_id] = @run.id
      redirect_to user_path(@run.id)
    else
      render :new
    end

  end

  def update
    run = Run.find params["id"]
    run.update run_params
    redirect_to "/run/#{ run["id"] }"
  end

  def index
    @runs = Run.all
  end

  def show
    @run = Run.find params[ "id" ]
  end

  def edit
    @run = Run.find params[ "id" ]
  end

  def new
    @run = Run.new
  end

  def destroy
  end

  private
  def run_params
    params.require(:run).permit(:name, :id, :length, :difficulty, :number_of_deaths, :claim, :image, )
  end


end
