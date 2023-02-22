class PropersController < ApplicationController
  def index
    
  end
  
  def new
    if params[:back]
      @picture = Picture.new(proper_params)
    else
      @proper = Proper.new
      @proper.stations.new
    end
  end
  
  def create
    @proper = Proper.new(proper_params)
    if @proper.save
      redirect_to propers_path
    else
      render :new
    end
  end
  
  def show
    
  end
  
  def edit
  
  end

  def update
  
  end
  
  private
  
  def proper_params
    params.require(:proper).permit(:proper_name, :rent, :address, :age, :remark, stations_attributes: [:line_name, :station_name, :minute_walk])
  end
end