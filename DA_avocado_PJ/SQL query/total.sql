----Remove
--California, 
--Great Lakes, 
--Midsouth, 
--Northeast, 
--Plains, 
--Southeast, 
--South Central,
--West

--SELECT DISTINCT geography,
--SUM(total_volume) AS num_already_sell
--FROM avocado_notUS_2022
--WHERE type ='conventional'
--GROUP BY geography
--ORDER BY 2 DESC

--SELECT * INTO avocado_detail FROM avocado_notUS_2022
--WHERE geography <> 'California' AND 
--      geography <>'Great Lakes' AND
--	  geography <> 'Midsouth' AND
--	  geography <> 'Northeast' AND
--	  geography <> 'Plains' AND
--	  geography <> 'Southeast' AND
--	  geography <> 'South Central' AND
--	  geography <> 'West'


SELECT DISTINCT TOP(5) geography, SUM(total_volume) AS Total_alr_sell,year type FROM avocado_detail
WHERE type = 'Organic' AND year = '2020'
GROUP BY geography,type,year
ORDER BY Total_alr_sell DESC
SELECT DISTINCT TOP(5) geography, SUM(total_volume) AS Total_alr_sell,year type FROM avocado_detail
WHERE type = 'Organic' AND year = '2021'
GROUP BY geography,type,year
ORDER BY Total_alr_sell DESC
SELECT DISTINCT TOP(5) geography, SUM(total_volume) AS Total_alr_sell,year type FROM avocado_detail
WHERE type = 'Organic' AND year = '2022'
GROUP BY geography,type,year
ORDER BY Total_alr_sell DESC


SELECT year,
   SUM(total_volume),
  type,
  geography 
FROM avocado_detail
WHERE geography ='New York' AND type ='Organic' 
GROUP BY geography,type,year

--Growth

SELECT geography, 
  ((SELECT SUM(total_volume) FROM avocado_detail
    WHERE geography ='San Francisco' AND type ='Organic' AND year = '2022')-SUM(total_volume))/SUM(total_volume)*100 as per,
  type
FROM avocado_notUS_2022
WHERE geography ='San Francisco' AND type ='Organic' AND year = '2020'
GROUP BY geography,type,year



SELECT DISTINCT geography,
SUM(_4046) AS _4046,
SUM(_4225) AS _4225,
SUM(_4770) AS _4770,
SUM(total_volume)
FROM avocado_detail
WHERE type ='Organic' AND year ='2022'
GROUP BY geography
ORDER BY 5 DESC

--Xét về số lượng bán ra của sản lượng bơ cho thấy NY và LA là 2 khu vực có sản lượng bán ra top đầu trong nhiều năm. Trong đó LA có mức độ bán ra ở mức ổn định trong nhiều năm, còn NY có tốc độ tăng trưởng mạnh về sản lượng bơ bán ra.