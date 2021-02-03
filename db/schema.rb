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

ActiveRecord::Schema.define(version: 2021_01_25_214017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "holes", force: :cascade do |t|
    t.bigint "round_id", null: false
    t.integer "score"
    t.string "fwloc"
    t.string "girloc"
    t.integer "putts"
    t.integer "par"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["round_id"], name: "index_holes_on_round_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "score", default: 0
    t.integer "total_putts", default: 0
    t.float "gir", default: 0.0
    t.float "fir", default: 0.0
    t.float "scramble", default: 0.0
    t.integer "num_of_holes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "holes", "rounds"
end
