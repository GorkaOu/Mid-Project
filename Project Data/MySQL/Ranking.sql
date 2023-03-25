USE mid_project;
-- RANK() OVER(ORDER BY length DESC)
-- To find the districts with more Airbnb´s 
SELECT district, COUNT(district) AS nº_of_Airbnb, RANK() OVER(ORDER BY COUNT(district) DESC) AS Ranking
FROM airbnb
GROUP BY district;
-- To find the districts with more Amenities
SELECT district, COUNT(District_ID) AS nº_of_Amenities, RANK() OVER(ORDER BY COUNT(District_ID) DESC) AS Ranking
FROM amenities
GROUP BY district;
-- To find the districts with more Gyms
SELECT district, COUNT(District_ID) AS nº_of_Amenities, RANK() OVER(ORDER BY COUNT(District_ID) DESC) AS Ranking
FROM amenities
WHERE Type LIKE '[''Gimnasios'']'
GROUP BY district;
-- To find the districts with more bicycle stands
SELECT District, COUNT(District_ID) AS nº_of_Bycicle_stops, RANK() OVER(ORDER BY COUNT(District_ID) DESC) AS Ranking
FROM bicycle
GROUP BY District; 
-- To find the districts with more cultural_events
SELECT District, COUNT(District) AS nº_of_cultural_events, RANK() OVER(ORDER BY COUNT(District) DESC) AS Ranking
FROM cultural_events
GROUP BY District;
-- To find the districts with more music_events
SELECT District, COUNT(District) AS nº_of_cultural_events, RANK() OVER(ORDER BY COUNT(District) DESC) AS Ranking
FROM cultural_events
WHERE Type LIKE '[''Musica%'']'
GROUP BY District;
--  To find the districts with more restaurants
SELECT District, COUNT(District_ID) AS nº_of_restaurants, RANK() OVER(ORDER BY COUNT(District_ID) DESC) AS Ranking
FROM restaurants
GROUP BY District;
--  To find the districts with more transport_stop
SELECT District, COUNT(District_ID) AS nº_of_transport_stop, RANK() OVER(ORDER BY COUNT(District_ID) DESC) AS Ranking
FROM transport
GROUP BY District;
--  To find the districts with more Metro_stop
SELECT District, COUNT(District_ID) AS nº_of_Metro_stop, RANK() OVER(ORDER BY COUNT(District_ID) DESC) AS Ranking
FROM transport
WHERE Type LIKE 'Metro'
GROUP BY District;
--  To find the districts with more Bus_stop
SELECT District, COUNT(District_ID) AS nº_of_Bus_stop, RANK() OVER(ORDER BY COUNT(District_ID) DESC) AS Ranking
FROM transport
WHERE Type LIKE 'Bus'
GROUP BY District;
--    To find the districts with more felonies
SELECT District, total_offense, RANK() OVER(ORDER BY total_offense DESC) AS Ranking
FROM felonies;
--  To find the districts with lowest rent price
SELECT District, Mean_year*60 AS Rent_price_fo_60m2flat, RANK() OVER(ORDER BY Mean_year*60 ASC) AS Ranking 
FROM mid_project.rentpricevo
WHERE Year LIKE "2022" AND District != 'city of madrid';