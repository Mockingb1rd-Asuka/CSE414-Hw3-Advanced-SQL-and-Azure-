SELECT DISTINCT F1.origin_city,
    ((
    SELECT COUNT(*)
    FROM FLIGHTS AS F3
    WHERE F3.origin_city = F1.origin_city
    AND F3.actual_time < 180
         ) * 100.0 / (
    SELECT COUNT(*)
    FROM FLIGHTS AS F2
    WHERE F2.origin_city = F1.origin_city
    )) AS percentage
FROM FLIGHTS AS F1
GROUP BY F1.origin_city
ORDER BY percentage ASC;

--327 rows, runtime: 24s

--Guam TT	0.000000000000
--Pago Pago TT	0.000000000000
--Aguadilla PR	29.433962264150
--Anchorage AK	32.146037399821
--San Juan PR	33.890360709190
--Charlotte Amalie VI	40.000000000000
--Ponce PR	41.935483870967
--Fairbanks AK	50.691244239631
--Kahului HI	53.664998528113
--Honolulu HI	54.908808692277
--San Francisco CA	56.307656826568
--Los Angeles CA	56.604107648725
--Seattle WA	57.755416553349
--Long Beach CA	62.454116413214
--Kona HI	63.282107574094
--New York NY	63.481519772551
--Las Vegas NV	65.163009288383
--Christiansted VI	65.333333333333
--Newark NJ	67.137355584082
--Worcester MA	67.741935483870
