class Drugstore < ApplicationRecord
  has_many :drug_in_drugstores
  has_many :drugs, through: :drug_in_drugstores

  validates :title, :coords, :address, :city, presence: true
  validates :city, inclusion: { in: City.slugs }
end
