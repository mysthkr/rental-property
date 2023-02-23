class PropersController < ApplicationController
  include Common
  
  def index
    @propers = Proper.all
  end
  
  def new
    @proper = Proper.new
    2.times { @proper.stations.build }
  end
  
  def create
    @proper = Proper.new(proper_params)
    if @proper.save
      redirect_to propers_path, notice: "登録しました！"
    else
      render :new
    end
  end
  
  def show
    @proper = proper_find
    @stations = @proper.stations
  end
  
  def edit
    @proper = proper_find
    @proper.stations.build
  end

  def update
    @proper = proper_find
    if @proper.update(proper_params)
      redirect_to root_path, notice: "変更しました！"
    else
      render :edit
    end
  end
  
  def destroy
    @proper = proper_find
    @proper.destroy
    redirect_to propers_path, notice:"投稿を削除しました！"
  end
  
  private
  
  def proper_params
    params.require(:proper).permit(:proper_name, :rent, :address, :age, :remark,
    stations_attributes: [:line_name, :station_name, :minute_walk, :id])
  end
end