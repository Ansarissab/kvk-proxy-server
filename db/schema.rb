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

ActiveRecord::Schema.define(version: 2022_02_16_234037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "proxies", force: :cascade do |t|
    t.string "kvk_number", default: ""
    t.string "branch_number", default: ""
    t.string "rsin", default: ""
    t.string "street", default: ""
    t.string "house_number", default: ""
    t.string "trade_name", default: ""
    t.boolean "include_former_trade_name", default: false
    t.boolean "include_inactive_registrations", default: false
    t.boolean "restrict_to_main_branch", default: false
    t.boolean "main_branch", default: false
    t.boolean "branch", default: false
    t.boolean "legal_person", default: false
    t.string "start_page", default: "1"
    t.string "site", default: ""
    t.string "context", default: ""
    t.string "q", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
