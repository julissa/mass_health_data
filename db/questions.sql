-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT town, population_greater_than_65_2005 
FROM town_health_records 
ORDER BY population_greater_than_65_2005 DESC
LIMIT 3
OFFSET 3;

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT town, population_0_to_19_2005 
FROM town_health_records 
ORDER BY population_0_to_19_2005 DESC
LIMIT 3
OFFSET 3 
;

-- What 5 towns have the lowest per capita income?
SELECT town, per_capita_income_2000 
FROM town_health_records 
ORDER BY per_capita_income_2000 
LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT town, percent_teen_births_2005_to_2008
FROM town_health_records 
WHERE percent_teen_births_2005_to_2008 
IS NOT NULL AND town NOT IN ('Boston','Becket','Beverly') 
ORDER BY percent_teen_births_2005_to_2008 DESC 
LIMIT 1;

-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT town, infant_mortality_rate_per_thousand_2005_to_2008
FROM town_health_records
WHERE infant_mortality_rate_per_thousand_2005_to_2008 IS NOT NULL AND town NOT IN ('Boston')
ORDER BY infant_mortality_rate_per_thousand_2005_to_2008 DESC
LIMIT 1;
-- Of the 5 towns with the highest per capita income, which one has the highest number of people below the poverty line?

SELECT town, per_capita_income_2000, persons_below_poverty_2000
  FROM town_health_records
    WHERE town IN
    (SELECT town
      FROM town_health_records
        ORDER BY per_capita_income_2000 DESC
        OFFSET 2
          LIMIT 5)
    ORDER BY persons_below_poverty_2000 DESC
      LIMIT 1;

-- Of the towns that start with the letter b, which has the highest population?
SELECT town FROM town_health_records
WHERE town LIKE 'B%'
LIMIT 1;
ORDER BY total_population_2005 DESC

-- Of the 10 towns with the highest percent publicly financed prenatal care, are any of them also the top 10 for total infant deaths?

SELECT town FROM town_health_records
WHERE town IN
(SELECT town FROM town_health_records
WHERE percent_publicly_financed_prenatal_care_2005_to_2008 IS NOT NULL
ORDER BY percent_publicly_financed_prenatal_care_2005_to_2008 DESC LIMIT 10) AND town IN SELECT town FROM town_health_records
WHERE infant_mortality_rate_per_thousand_2005_to_2008 IS NOT NULL
ORDER BY infant_mortality_rate_per_thousand_2005_to_2008 DESC LIMIT 10);



-- Which town has the highest percent multiple births?

select town FROM town_health_records 
ORDER BY percent_multiple_births_2005_to_2008 DESC
LIMIT 1;

-- What is the percent adequacy of prenatal care in that town?

SELECT percent_adequacy_pre_natal_care  FROM town_health_records 
WHERE town = 'Buckland';

-- Excluding towns that start with W, how many towns are part of this data?

SELECT count(*) FROM town_health_records
WHERE town NOT LIKE 'W%';

-- How many towns have a lower per capita income that of Boston?

SELECT count(*) FROM town_health_records
WHERE per_capita_income_2000 < (SELECT per_capita_income_2000 FROM town_health_records WHERE town = 'Boston' );








