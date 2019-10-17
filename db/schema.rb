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

ActiveRecord::Schema.define(version: 2019_10_17_111723) do

  create_table "continents", force: :cascade do |t|
    t.string "Continent"
    t.string "Country"
    t.integer "Population"
    t.integer "Population_density"
    t.integer "Urban_population"
    t.integer "Urban_population_coastal"
    t.integer "GDP_per_capita"
    t.integer "Land_area"
    t.integer "Cropland_area"
    t.integer "Pasture_area"
    t.integer "Water_per_capita"
    t.integer "Commercial_energy_consumption"
    t.integer "Traditional_fuel_consumption"
    t.integer "Commercial_hydroelectric_consumption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "continent"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
