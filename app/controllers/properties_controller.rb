class PropertiesController < ApplicationController
  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.stage = 0
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id].to_i)
  end

  def update
    @property = Property.find(params[:id].to_i)
    @property.update(property_params)
    redirect_to properties_path
  end

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id].to_i)
  end

  def update_stage
    if params[:token]
      @property = Property.find(params[:token].to_i)
      @property.update_stage(1)
    else
      @property = Property.find(params[:token1].to_i)
      @property.update_stage(2)
    end
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:property_type,
      :street,
      :house_number,
      :zip_code,
      :city,
      :living_space,
      :plot_area,
      :number_of_rooms,
      :construction_year,
      :description)
  end
end
