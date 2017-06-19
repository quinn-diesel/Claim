class MountainsController < ApplicationController

  def create
    @mountain = Mountain.create user_params
      if @mountain.id.present?
        redirect_to user_path(@mountain.id)
      else
      render :new
    end
  end

  def update
  end

  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find params[ "id" ]
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
