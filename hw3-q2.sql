SELECT DISTINCT F1.origin_city AS city
FROM FLIGHTS AS F1
GROUP BY F1.origin_city
HAVING F1.origin_city NOT IN (
    SELECT DISTINCT F2.origin_city
    FROM FLIGHTS AS F2
    GROUP BY F2.origin_city
    HAVING MAX(F2.actual_time) >= 180)
ORDER BY F1.origin_city;

--109 rows, runtime: 15s 526ms

--Aberdeen SD
--Abilene TX
--Alpena MI
--Ashland WV
--Augusta GA
--Barrow AK
--Beaumont/Port Arthur TX
--Bemidji MN
--Bethel AK
--Binghamton NY
--Brainerd MN
--Bristol/Johnson City/Kingsport TN
--Butte MT
--Carlsbad CA
--Casper WY
--Cedar City UT
--Chico CA
--College Station/Bryan TX
--Columbia MO
--Columbus GA


