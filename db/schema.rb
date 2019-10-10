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

ActiveRecord::Schema.define(version: 2019_10_10_091806) do

  create_table "worlddata", force: :cascade do |t|
    t.string "Continent"
    t.string "Country"
    t.integer "Population"
    t.integer "Population_Density"
    t.integer "Uban_pop"
    t.integer "Uban_pop_coastal"
    t.integer "GDP_per_capita"
    t.integer "Land_Area"
    t.integer "Cropland"
    t.integer "Pasture"
    t.integer "Water_per_capita"
    t.integer "Commercial_Energy_Consumption"
    t.integer "Traditional_Fuel_Consumption"
    t.integer "Commercial_Hydroelec_Consumption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
