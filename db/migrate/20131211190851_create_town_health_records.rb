class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.integer :total_population_2005
      t.integer :population_0_to_19_2005
      t.integer :population_greater_than_65_2005
      t.decimal :per_capita_income_2000
      t.integer :persons_below_poverty_2000
      t.integer :percent_persons_below_poverty_2000
      t.decimal :percent_adequacy_pre_natal_care
      t.decimal :percent_c_section_delivery_2005_to_2008
      t.integer :total_infant_deaths_2005_to_2008
      t.decimal :infant_mortality_rate_per_thousand_2005_to_2008
      t.decimal :percent_low_birthweight_2005_to_2008
      t.decimal :percent_multiple_births_2005_to_2008
      t.decimal :percent_publicly_financed_prenatal_care_2005_to_2008
      t.decimal :percent_teen_births_2005_to_2008

      t.timestamps
    end
  end
end
