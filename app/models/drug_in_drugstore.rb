class DrugInDrugstore < ApplicationRecord
  belongs_to :drug
  belongs_to :drugstore
end
