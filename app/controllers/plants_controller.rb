class PlantsController < ApplicationController
  def index
    plant = Plant.all 
    render json: plant
  end
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end
  def create 
    birds = Plant.create(bird_params)
    render json: birds, status: :created
  end

  private 
  def bird_params 
    params.permit(:name, :image, :price)
  end
end
