SELECT DISTINCT geography,
      AVG(average_price)*SUM(total_volume) as Revenue,
	  type,
	  year
FROM avocado_detail
WHERE year ='2015' AND type ='Organic' AND geography ='Seattle'
GROUP BY geography,year,type
ORDER BY 2 DESC



SELECT DISTINCT geography,
      AVG(average_price)*SUM(total_volume) as _Revenue,
	  type,
	  year
FROM avocado_detail
WHERE type ='Organic'
GROUP BY geography,year,type
ORDER BY 2 DESC






SELECT DISTINCT TOP(5) geography,
      AVG(average_price)*SUM(_4046) as _Rev_4046,
	  AVG(average_price)*SUM(_4225) as _Rev_4225,
      AVG(average_price)*SUM(_4770) as _Rev_4770,
	  AVG(average_price)*SUM(total_volume) Total_Revenue,
	  type,
	  year
FROM avocado_detail
WHERE type ='Organic' AND year ='2021'
GROUP BY geography,year,type
ORDER BY 5 DESC

SELECT geography, MAX(total_volume*average_price),year,type
FROM avocado_detail
WHERE type ='Organic'
GROUP BY geography,year,type
ORDER BY 2 DESC









