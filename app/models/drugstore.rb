class Drugstore < ApplicationRecord
  has_many :drug_in_drugstores
  has_many :available_drugs, -> { available }, class_name: "DrugInDrugstore"
  has_many :unavailable_drugs, -> { unavailable }, class_name: "DrugInDrugstore"

  has_many :drugs, through: :drug_in_drugstores

  validates :title, :coords, :address, :city, presence: true
  validates :city, inclusion: { in: City.slugs }
end
