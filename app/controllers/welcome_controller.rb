class WelcomeController < ApplicationController
  skip_before_action :find_city, only: :cities

  def index
    @random_drug = Drug.random
    @drug_in_drugstores = DrugInDrugstore
      .all
      .includes(:drug, :drugstore)
      .where(drugstores: { city: @city })
      .order(updated_at: :desc).limit(30)
  end

  def cities; end
end
