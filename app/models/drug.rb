class Drug < ApplicationRecord
  has_many :drug_in_drugstores
  has_many :drugstores, through: :drug_in_drugstores

  validates :title_ru, presence: true

  def self.random
    self.order(Arel.sql('RANDOM()')).first
  end
end
