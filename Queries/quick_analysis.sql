-- Q: What was the average selling price for each make?
SELECT make, AVG(sellingprice) 
AS avg_selling_price 
FROM car_prices
WHERE make IS NOT NULL
GROUP BY LOWER(make);

-- Q: How many different types of transmissions are there?
SELECT transmission, COUNT(*) 
AS sales_count
FROM car_prices
WHERE transmission IS NOT NULL
GROUP BY LOWER(transmission);

-- Q: What is the average difference between the selling price and mmr for each model and make?
SELECT make, model,AVG(mmr - sellingprice)
AS mmr_price_diff
FROM car_prices
WHERE make IS NOT NULL
AND model IS NOT NULL
GROUP BY make, model;

/* The Findings.csv file contains answers for each question */