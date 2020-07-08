class CreateDrugInDrugstores < ActiveRecord::Migration[6.0]
  def change
    create_table :drug_in_drugstores do |t|
      t.string :status, null: false, default: ""

      t.timestamps
    end

    add_reference :drug_in_drugstores, :drug, index: true, foreign_key: true
    add_reference :drug_in_drugstores, :drugstore, index: true, foreign_key: true
  end
end
