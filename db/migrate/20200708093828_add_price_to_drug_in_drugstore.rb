class AddPriceToDrugInDrugstore < ActiveRecord::Migration[6.0]
  def change
    add_column :drug_in_drugstores, :price, :integer, null: false, default: 0
    add_index :drug_in_drugstores, :price
  end
end
