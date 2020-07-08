class DrugstoresController < ApplicationController
  def index
    
  end

  def new
    @drugstore = Drugstore.new(coords: City.coords[@city.to_sym])
  end

  def create
    @drugstore = Drugstore.new(drugstore_params.merge(city: @city))
    if @drugstore.save
      flash[:success] = t(".success")
      redirect_to drugstore_path(@drugstore)
    else
      flash.now[:error] = t(".failure")
      render :new
    end
  end

  def show
    @drugstore = Drugstore.find(params[:id])
  end

  private

  def drugstore_params
    params.require(:drugstore).permit(:title, :address, :coords)
  end
end