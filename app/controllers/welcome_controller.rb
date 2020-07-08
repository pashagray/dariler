class WelcomeController < ApplicationController
  def index
    @random_drug = Drug.random    
  end
end