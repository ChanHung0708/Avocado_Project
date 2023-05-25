--AVCOCADO_DA
-----------------------PRICEEEE
--1. Top of price
SELECT  year ,AVG(average_price) AS price FROM avocado_notUS_2022
WHERE geography ='Seattle' AND type ='Organic'--organic/conventional--
GROUP BY geography,type,year
ORDER BY 1 ASC

--2. Price of 15 - 22
SELECT year,
   AVG(average_price),
  type,
  geography 
FROM avocado_notUS_2022
WHERE type ='Organic' 
GROUP BY geography,type,year

--3. Percent of growth price in 2015 -> 2022/ (Cuối - Đầu)/Đầu*100
SELECT geography, 
  ((SELECT AVG(average_price) FROM avocado_notUS_2022
    WHERE  geography='Seattle' AND type ='Organic' AND year = '2022')-AVG(average_price))/AVG(average_price)*100 as per,
  type
FROM avocado_notUS_2022
WHERE geography='Seattle' AND type ='Organic' AND year = '2020'
GROUP BY geography,type,year
ORDER BY 2 DESC
