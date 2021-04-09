SELECT DISTINCT C.name AS carrier
FROM CARRIERS AS C, FLIGHTS AS F
WHERE F.carrier_id = C.cid
AND F.origin_city = 'Seattle WA'
AND F.dest_city = 'San Francisco CA'
ORDER BY C.name ASC;

--4 rows, runtime: 3s 598ms

--Alaska Airlines Inc.
--SkyWest Airlines Inc.
--United Air Lines Inc.
--Virgin America
