class RunsController < ApplicationController
  def create
    run = Run.create mountain_params
    redirect_to "/runs/#{ run.id }"
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
    @run = Run.all
  end

  def destroy
  end

  private
  def run_params
    params.require(:run).permit(:name, :id, :length, :difficulty, :number_of_deaths, :claim, :image)
  end


end
