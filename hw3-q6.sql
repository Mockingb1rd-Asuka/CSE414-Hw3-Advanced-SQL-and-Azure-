SELECT DISTINCT C.name AS carrier
FROM CARRIERS AS C
WHERE C.cid IN (
    SELECT F.carrier_id
    FROM FLIGHTS AS F
    WHERE F.origin_city = 'Seattle WA'
    AND F.dest_city = 'San Francisco CA'
    )
ORDER BY C.name ASC;

--4 rows, runtime: 3s 104ms

--Alaska Airlines Inc.
--SkyWest Airlines Inc.
--United Air Lines Inc.
--Virgin America

