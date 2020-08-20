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

ActiveRecord::Schema.define(version: 2020_08_20_171222) do

  create_table "cars", force: :cascade do |t|
    t.string "manufacturer"
    t.string "model"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loans", force: :cascade do |t|
    t.string "category"
    t.integer "amount"
    t.integer "user_id"
    t.integer "car_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_loans_on_car_id"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'index ' for column 'uid'

end
