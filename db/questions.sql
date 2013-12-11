-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT town FROM town_health_records
WHERE town <> 'Massachusetts Total' AND town <> ''
ORDER BY population_greater_than_65_2005 DESC LIMIT 3;
-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT town FROM town_health_records
WHERE town <> 'Massachusetts Total' AND town <> ''
ORDER BY population_0_to_19_2005 DESC LIMIT 3;
-- What 5 towns have the lowest per capita income?
SELECT town FROM town_health_records
WHERE town <> 'Massachusetts Total' AND town <> ''
ORDER BY per_capita_income_2000 LIMIT 5;
-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT town FROM town_health_records
WHERE town <> 'Massachusetts Total' AND town <> '' AND town <> 'Boston' AND town <> 'Becket' AND town <> 'Beverly'
ORDER BY per_capita_income_2000 DESC LIMIT 1;
-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT town FROM town_health_records
WHERE town <> 'Massachusetts Total' AND town <> '' AND town <> 'Boston'
ORDER BY total_infant_deaths_2005_to_2008 DESC LIMIT 1;
