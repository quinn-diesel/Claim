class RunsController < ApplicationController
  def create
    @runs = Run.create user_params
      if @run.id.present?
        redirect_to user_path(@run.id)
      else
      render :new
    end
  end

  def update
  end

  def index
    @run = Run.all
  end

  def show
    @run = Run.find params[ "id" ]
  end

  def edit
  end

  def new
    @mountain = Mountain.all
  end

  def destroy
  end

  private
  def mountain_params
    params.require(:mountain).permit(:name)
  end

end
