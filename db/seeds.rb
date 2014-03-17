require 'csv'

datafile = Rails.root + 'db/data/mass_health_data.csv'

CSV.foreach(datafile, headers: true) do |row|

  row.each do |col|
    unless col[1] == nil || col[0] == 'Geography'
      col[1].gsub!('$', '')
      col[1].gsub!(',', '')
      col[1] = nil if col[1] == 'NA' || col[1].include?('Note:')
    end
  end

  TownHealthRecord.find_or_create_by({town: row[0]}) do |hr|
    hr.town = row[0]
    hr.total_population_2005 =  row[1]
    hr.population_0_to_19_2005 =  row[2]
    hr.population_greater_than_65_2005 =  row[3]
    hr.per_capita_income_2000 =  row[4]
    hr.persons_below_poverty_2000 =  row[5]
    hr.percent_persons_below_poverty_2000 =  row[6]
    hr.percent_adequacy_pre_natal_care =  row[7]
    hr.percent_c_section_delivery_2005_to_2008 =  row[8]
    hr.total_infant_deaths_2005_to_2008 =  row[9]
    hr.infant_mortality_rate_per_thousand_2005_to_2008 =  row[10]
    hr.percent_low_birthweight_2005_to_2008 =  row[11]
    hr.percent_multiple_births_2005_to_2008 =  row[12]
    hr.percent_publicly_financed_prenatal_care_2005_to_2008 =  row[13]
    hr.percent_teen_births_2005_to_2008 =  row[14]
  end

end
