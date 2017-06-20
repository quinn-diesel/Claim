class MountainsController < ApplicationController

  def create
    mountain = Mountain.create mountain_params
    redirect_to "/moutains/#{ mountain.id }"
  end

  def update
    mountain = Mountain.find params["id"]
    mountain.update mountain_params
    redirect_to "/mountains/#{ params["id"] }"
  end

  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find params[ "id" ]
  end

  def edit
      @mountain = Mountain.find params[ "id" ]
  end

  def new
    @mountain = Mountain.all
  end

  def destroy
  end

  private
  def mountain_params
    params.require(:mountain).permit(:name, :size, :number_of_runs, :map, :highest_point, :number_of_bars)
  end


end
