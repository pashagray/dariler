class ApplicationController < ActionController::Base
  before_action :find_city

  private

  def find_city
    if params[:city]
      @city = params[:city]
      cookies[:city] = params[:city]
    elsif cookies[:city]
      @city = cookies[:city]
    else
      @city = City.default
    end
  end

  def default_url_options(options={})
    { city: @city || City.default }
  end
end
