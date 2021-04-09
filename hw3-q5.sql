SELECT DISTINCT F1.dest_city AS city
FROM FLIGHTS AS F1
WHERE F1.origin_city != 'Seattle WA'
AND F1.dest_city NOT IN (
    SELECT F3.dest_city
    FROM FLIGHTS AS F2, FLIGHTS AS F3
    WHERE F2.origin_city = 'Seattle WA'
        AND F3.origin_city = F2.dest_city
    )
ORDER BY city ASC;


--3 rows, runtime: 32s

--Devils Lake ND
--Hattiesburg/Laurel MS
--St. Augustine FL
