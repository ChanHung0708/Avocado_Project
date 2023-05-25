--price_total_US
SELECT geography, AVG(average_price),type,year FROM avocado_isUS_2022
WHERE type ='Organic'
GROUP BY geography,type,year
ORDER BY year

--total_volume
SELECT geography, SUM(total_volume),type,year FROM avocado_isUS_2022
WHERE type ='Conventional'
GROUP BY geography,type,year
ORDER BY year

--Revenue
SELECT geography,AVG(average_price)*SUM(total_volume) as Revenue,type,year FROM avocado_isUS_2022
WHERE type ='Organic'
GROUP BY geography,type,year
ORDER BY year

SELECT geography, AVG(average_price)*SUM(_4046),AVG(average_price)*SUM(_4225),AVG(average_price)*SUM(_4770),type,year FROM avocado_isUS_2022
WHERE type ='Organic'
GROUP BY geography,type,year
ORDER BY year

SELECT geography, 
SUM(_4046)/SUM(total_volume)*100,
SUM(_4225)/SUM(total_volume)*100,
SUM(_4770)/SUM(total_volume)*100,
type,year FROM avocado_isUS_2022
WHERE type ='Organic'
GROUP BY geography,type,year
ORDER BY year


SELECT geography,
SUM(_4046)/SUM(total_volume)*100,
SUM(_4225)/SUM(total_volume)*100,
SUM(_4770)/SUM(total_volume)*100,