class DrugInDrugstore < ApplicationRecord
  STATUSES = %w[
    AVAILABLE
    UNAVAILABLE
  ].freeze
  
  belongs_to :drug
  belongs_to :drugstore

  validates :drug_id, :drugstore_id, :status, presence: true
  validates :status, inclusion: { in: STATUSES }

  scope :available,   -> { where(status: "AVAILABLE") }
  scope :unavailable, -> { where(status: "UNAVAILABLE") }
  scope :order_by_title_ru, -> { order("drugs.title_ru ASC") }

  delegate :title_ru, to: :drug

  def available?
    status == "AVAILABLE"
  end

  def unavailable?
    status == "UNAVAILABLE"
  end
end
