# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_29_201159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_countries_on_name"
  end

  create_table "filmmakers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_filmmakers_on_name"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_genres_on_name"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "genre_id"
    t.bigint "country_id"
    t.string "style"
    t.string "state"
    t.integer "year"
    t.integer "category", default: 0, null: false
    t.integer "length_in_minutes", null: false
    t.integer "rating", default: 0, null: false
    t.integer "director_id"
    t.integer "screenwriter_id"
    t.text "synopsis"
    t.string "accessibility_options"
    t.string "special_collection"
    t.string "rack", null: false
    t.string "shelf", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_movies_on_category"
    t.index ["country_id"], name: "index_movies_on_country_id"
    t.index ["genre_id"], name: "index_movies_on_genre_id"
    t.index ["rack"], name: "index_movies_on_rack"
    t.index ["rating"], name: "index_movies_on_rating"
    t.index ["shelf"], name: "index_movies_on_shelf"
    t.index ["title"], name: "index_movies_on_title"
  end

  add_foreign_key "movies", "countries"
  add_foreign_key "movies", "genres"
end
