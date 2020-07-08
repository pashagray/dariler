class Drugstore < ApplicationRecord
  has_many :drug_in_drugstores
  has_many :drugs, through: :drug_in_drugstores
end
