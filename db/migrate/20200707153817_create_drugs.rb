class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.string :title_ru, null: false, default: ""

      t.timestamps
    end
    add_index :drugs, :title_ru, unique: true
  end
end
