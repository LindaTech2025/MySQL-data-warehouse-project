
/* 
===========================================================================
Quality Checks
===========================================================================
Script Purpose:
This script carries out data quality checks in order to assess the accuracy 
and consistency of the data across the gold layer.
It includes checks for all of the following:
- Uniqueness of surrogate keys in the dimension tables
- Referential integrity between fact and dimension tables
- Validation of relationships in the data model for analytical purposes

Usage: Check for discrepancies during the checksa and make the correction
==========================================================================
*/

- - Checking gold dim customers
===========================================================================
- - Check for uniqueness of customer key in gold.dim_customers
- - Expectation: No Results
===========================================================================

SELECT
        product_key,
        COUNT(*) AS duplicate_count
FROM gold.dim_poducts
GROUP BY product_key
HAVING COUNT (*) > 1;



===========================================================================
- - Checking gold fact_sales
===========================================================================
- - Check the data model connectivity between fact and dimensions

SELECT *
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers  c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL
