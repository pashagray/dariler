# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_07_154210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drug_in_drugstores", force: :cascade do |t|
    t.string "status", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "drug_id"
    t.bigint "drugstore_id"
    t.index ["drug_id"], name: "index_drug_in_drugstores_on_drug_id"
    t.index ["drugstore_id"], name: "index_drug_in_drugstores_on_drugstore_id"
  end

  create_table "drugs", force: :cascade do |t|
    t.string "title_ru", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title_ru"], name: "index_drugs_on_title_ru", unique: true
  end

  create_table "drugstores", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "city"
    t.string "coords"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city"], name: "index_drugstores_on_city"
    t.index ["title"], name: "index_drugstores_on_title"
  end

  add_foreign_key "drug_in_drugstores", "drugs"
  add_foreign_key "drug_in_drugstores", "drugstores"
end
