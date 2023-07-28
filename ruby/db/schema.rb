# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_21_172557) do
  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer "room_id", null: false
    t.integer "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_seats_on_person_id"
    t.index ["room_id"], name: "index_seats_on_room_id"
  end

  create_table "showing_options", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "showing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_showing_options_on_movie_id"
    t.index ["showing_id"], name: "index_showing_options_on_showing_id"
  end

  create_table "showings", force: :cascade do |t|
    t.datetime "shown_at"
    t.integer "room_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_showings_on_movie_id"
    t.index ["room_id"], name: "index_showings_on_room_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "value"
    t.integer "person_id", null: false
    t.integer "showing_option_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_votes_on_person_id"
    t.index ["showing_option_id"], name: "index_votes_on_showing_option_id"
  end

  add_foreign_key "seats", "people"
  add_foreign_key "seats", "rooms"
  add_foreign_key "showing_options", "movies"
  add_foreign_key "showing_options", "showings"
  add_foreign_key "showings", "movies"
  add_foreign_key "showings", "rooms"
  add_foreign_key "votes", "people"
  add_foreign_key "votes", "showing_options"
end
