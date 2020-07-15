class AddIndeciesToDrugInDrugstore < ActiveRecord::Migration[6.0]
  def change
    add_index :drug_in_drugstores, [:drug_id, :drugstore_id], unique: true
    add_index :drug_in_drugstores, [:drug_id, :drugstore_id, :status]
  end
end
