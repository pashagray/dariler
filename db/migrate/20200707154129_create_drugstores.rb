class CreateDrugstores < ActiveRecord::Migration[6.0]
  def change
    create_table :drugstores do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :coords

      t.timestamps
    end

    add_index :drugstores, :title
    add_index :drugstores, :city
  end
end
