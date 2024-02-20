class TravelsController < ApplicationController
  before_action :authenticate_user!, only: [:new ]


  def index
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(travel_params)
    if @travel.save
      redirect_to '/'
    else 
      render :new, status: :unprocessable_entity
    end
  end

  private

  def travel_params
    params.require(:travel).permit(:title, :description, :place, :image).merge(user_id: current_user.id)
  end
end
