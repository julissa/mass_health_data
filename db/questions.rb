# -- What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order('population_greater_than_65_2005 DESC').offset(2).limit(3).select(:town)
# -- What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order('population_0_to_19_2005 DESC').offset(2).limit(3).select(:town)
# -- What 5 towns have the lowest per capita income?
TownHealthRecord.order(:per_capita_income_2000).offset(2).limit(5).select(:town)
# -- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
@town_exclude = ['Boston', 'Becket', 'Beverly']
TownHealthRecord.order(:percent_teen_births_2005_to_2008).where.not(town: @town_exclude).offset(2).limit(1).select(:town)
# -- Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.order(:total_infant_deaths_2005_to_2008).where.not(town: 'Boston').offset(2).limit(1).select(:town)

