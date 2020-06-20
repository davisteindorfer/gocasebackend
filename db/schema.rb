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

ActiveRecord::Schema.define(version: 2020_06_15_220732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", primary_key: "reference", id: :string, force: :cascade do |t|
    t.string "purchase_channel", null: false
    t.text "group_of_orders", default: [], null: false, array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", primary_key: "reference", id: :string, force: :cascade do |t|
    t.string "purchase_channel", null: false
    t.string "client_name", null: false
    t.string "adress", null: false
    t.string "delivery_service", null: false
    t.integer "total_value_RS", null: false
    t.string "line_items", default: [], null: false, array: true
    t.string "status", null: false
    t.bigint "batches_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["batches_id"], name: "index_orders_on_batches_id"
  end

end
