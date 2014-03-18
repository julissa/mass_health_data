# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order(population_greater_than_65_2005: :desc).limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order(population_0_to_19_2005: :desc).limit(3)

# What 5 towns have the lowest per capita income?
TownHealthRecord.order(per_capita_income_2000: :asc).limit(5)

#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.where.not(town: ['Boston', 'Becket', 'Beverly']).order(percent_teen_births_2005_to_2008: :desc).limit(1)

# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.where.not(town: 'Boston').order('total_infant_deaths_2005_to_2008').limit(1)

# Of the 5 towns with the highest per capita income, which one has the highest number of people below the poverty line?

# Of the towns that start with the letter b, which has the highest population?
TownHealthRecord.where("town LIKE 'B%'").order(total_population_2005: :desc).limit(1)

# Which town has the highest percent multiple births?
TownHealthRecord.order(percent_multiple_births_2005_to_2008: :desc).limit(1)

# What is the percent adequacy of prenatal care in that town?



# Excluding towns that start with W, how many towns are part of this data?
TownHealthRecord.where.not("town LIKE 'W%")

# How many towns have a lower per capita income that of Boston?