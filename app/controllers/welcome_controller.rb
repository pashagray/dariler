class WelcomeController < ApplicationController
  skip_before_action :find_city, only: :cities

  def index
    @random_drug = Drug.random
  end

  def cities; end
end