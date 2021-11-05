class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
     @building = Building.find(params[:id])
     @apartment = Apartment.where(building_id: @building.id)
  end

  def new
    @building = Building.new 
  end
 
  def create
    @building = Building.new(building_params)
    respond_to do |format|
      if @building.save
        format.html { redirect_to buildings_path, notice: "building was successfully created." }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end 

  def edit
    @building = Building.find(params[:id]) 
  end

  def update
    @building = Building.find(params[:id]) 
    if @building.update(building_params)
    redirect_to(buildings_path)
    else 
    render("edit") 
    end     
  end

  def delete
    @building = Building.find(params[:id]) 
  end

  def destroy
    @building = Building.find(params[:id]) 
    @building.destroy
    redirect_to(buildings_path)
  end
  private

  def set_building
    @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building).permit(:nombre_edificio, :direccion, :ciudad) 
  end


end
