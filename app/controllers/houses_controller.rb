class HousesController < ApplicationController

def index
  @houses = House.all 
  render :index 
end

def show
  @house = House.find_by(id: params[:id])
  render :show
end

def create
  @house = House.create(
    squarefeet: params[:squarefeet],
    bedrooms: params[:bedrooms],
    bathrooms: params[:bathrooms],
    address: params[:address],
  )
  render :show
end

def update
  @house = House.find_by(id: params[:id])
  @house.update(
    squarefeet: params[:squarefeet],
    bedrooms: params[:bedrooms],
    bathrooms: params[:bathrooms],
    address: params[:address],
  )
  render :show
end

def destroy
  @house = House.find_by(id: params[:id])
  @house.destroy
  render json: { message: "destroyed successfully"}
end

end
