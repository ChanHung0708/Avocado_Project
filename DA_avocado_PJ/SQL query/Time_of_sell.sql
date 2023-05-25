

SELECT geography, SUM(total_volume) as tol,type,MONTH(date) FROM avocado_isUS_2022
WHERE type ='Conventional'
GROUP BY geography,type,MONTH(date)
ORDER BY tol DESC

SELECT AVG(average_price),MONTH(date), SUM(total_volume) as vol FROM avocado_isUS_2022
WHERE type ='Organic' 
GROUP BY geography,type,MONTH(date)
ORDER BY 1 