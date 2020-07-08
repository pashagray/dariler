class DrugsController < ApplicationController
  def index
    
  end

  def new
    @drug = Drug.new
  end

  def create
    @drug = Drug.new(normalized_drug_params)
    if @drug.save
      flash[:success] = t(".success")
      redirect_to drug_path(@drug)
    else
      flash[:error] = t(".failure")
      render :new
    end

  rescue ActiveRecord::RecordNotUnique
    flash[:success] = t(".already_exists")
    redirect_to drug_path(Drug.find_by(title_ru: @drug.title_ru))
  end

  def show
    @drug = Drug.find(params[:id])
  end

  private

  def drug_params
    params.require(:drug).permit(:title_ru)
  end

  def normalized_drug_params
    drug_params.transform_values { |param| param.strip.downcase.capitalize }
  end
end