# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131211190851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "town"
    t.integer  "total_population_2005"
    t.integer  "population_0_to_19_2005"
    t.integer  "population_greater_than_65_2005"
    t.decimal  "per_capita_income_2000"
    t.integer  "persons_below_poverty_2000"
    t.integer  "percent_persons_below_poverty_2000"
    t.decimal  "percent_adequacy_pre_natal_care"
    t.decimal  "percent_c_section_delivery_2005_to_2008"
    t.integer  "total_infant_deaths_2005_to_2008"
    t.decimal  "infant_mortality_rate_per_thousand_2005_to_2008"
    t.decimal  "percent_low_birthweight_2005_to_2008"
    t.decimal  "percent_multiple_births_2005_to_2008"
    t.decimal  "percent_publicly_financed_prenatal_care_2005_to_2008"
    t.decimal  "percent_teen_births_2005_to_2008"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
