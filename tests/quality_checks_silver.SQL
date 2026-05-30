
--  Check for Nulls or Duplicates in Primary Key
-- Expectation: No Result

SELECT *
FROM bronze.crm_cust_info
SELECT 
cst_id,
COUNT (*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT  (*) > 1 OR cst_id IS NULL


SELECT *
FROM bronze.crm_cust_info
WHERE cst_id  = 29466


-- Check for unwanted spaces –
-- Expectation: No Results
SELECT cst_firstname


== Data Standardisation & Consistency
SELECT DISTINCT cst_gndr
FROM bronze.crm_cust_info

-- Check for Nulls or Duplicates in Primary Key
-- Expectation: No Result
SELECT *
FROM silver.crm_cust_info
SELECT 
cst_id,
COUNT (*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT  (*) > 1 OR cst_id IS NULL

-- Check for unwanted spaces 
-- Expectation: No Results
SELECT cst_firstname
FROM silver.crm_cust_info
WHERE cst_firstname != TRIM (cst_firstname)

== Data Standardisation & Consistency
SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info

SELECT *
FROM silver.crm_cust_info

- - Check for Nulls or Duplicates in Primary Key
- - Expectation: No Result
SELECT *
FROM bronze.crm_prd_info
SELECT 
cst_id,
COUNT (*)
FROM bronze.crm_prd_info
GROUP BY prd_id
HAVING COUNT  (*) > 1 OR prd_id IS NULL

SELECT distinct id from bronze.erp_pax_cat_g1v2

- - Check for unwanted spaces –
- - Expectation: No Results
SELECT prd_nm
FROM bronze.crm_prd_info
WHERE prd_nm != TRIM (prd_name)

- - Check for NULLS or Negative Numbers
- - Expectation: No Results
SELECT prd_cost
FROM bronze.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

- - Data Standardisation & Consistency
SELECT DISTINCT prd_line
FROM bronze.crm_prd_info

- - Check for invalid date orders –
SELECT *
FROM bronze.crm_prd_info
WHERE prd_end_dt > prd_start_dt

- - Check for Nulls or Duplicates in Primary Key
- - Expectation: No Result
SELECT *
FROM silver.crm_prd_info
SELECT 
prd_id,
COUNT (*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT  (*) > 1 OR prd_id IS NULL

- - Check for unwanted spaces –
- - Expectation: No Results
SELECT prd_nm
FROM silver.crm_prd_info
WHERE prd_nm != TRIM (prd_nm)

- - Check for unwanted spaces
- - Expectations: No results
SELECT prd_line
FROM silver.crm_prd_info
WHERE prd_nm != TRIM (prd_nm)

- - Check for NULLS and negative numbers
- - Expectations: No results
SELECT prd_cost
FROM silver.crm_prd_info
WHERE prd_cost  < 0 OR prd_cost IS NULL

- - Check for invalid date orders –
SELECT *
FROM silver.crm_prd_info
WHERE prd_end_dt  < prd_start_dt

SELECT *
FROM silver.crm_prd_info

SELECT
sls_order_dt
FROM bronze_crm_sales_details
WHERE sls_order_dt < = 0
SELECT
NULLIF(sls_order_dt, 0) sls_order_dt
FROM bronze_crm_sales_details
WHERE sls_order_dt < = 0
OR LEN (sls_order_dt) ! = 8 
OR sls_order_dt > 20500101
OR sls_order_dt < 19000101

SELECT
NULLIF(sls_ship_dt, 0) sls_ship_dt
FROM bronze_crm_sales_details
WHERE sls_ship_dt < = 0
OR LEN (sls_ship_dt) ! = 8 
OR sls_ship_dt > 20500101
OR sls_ship_dt < 19000101

SELECT
NULLIF(sls_due_dt, 0) sls_due_dt
FROM bronze_crm_sales_details
WHERE sls_due_dt < = 0
OR LEN (sls_due_dt) ! = 8 
OR sls_due_dt > 20500101
OR sls_due_dt < 19000101


-- Check for invalid date orders –
SELECT  *
FROM bronze.crm_sales_details
WHERE sls_order_dt > sls_ship_dt OR sls_order_dt > sls_due_dt
WHERE sls_order_dt > sls_ship_dt;

- - Check Data Consistency: Between Sales, Quantity, and Price 
- >> Sales = 	Quantity * Price
- >> Values must not be NULL, zero, or negative


-- Check for invalid date orders 
SELECT
*
FROM crm_sales_details
WHERE sls_order_dt > sls_ship_dt OR sls_ord_dt > sls_due_dt


SELECT *
FROM silver.crm_sales_details

SELECT
cid,
bdate,
gen
FROM bronze.erp_cust_az12

SELECT *
FROM (silver). (crm_cust_info);
WHERE cid LIKE ‘%AW00011000%’

== Check for birth dates that are out of range ==
SELECT DISTINCT
bdate
FROM  bronze.erp_custAZ12
WHERE bdate < ‘1924-01-01’ OR bdate> GETDATE()

- - Data Standardisation and Consistency 
SELECT DISTINCT gen
FROM bronze.erp_cust_az12

SELECT
cid,
cntry
FROM bronze.erp_loc_a101

SELECT cst_key FROM silver.crm_cust_info;

-- Data standardisation and consistency
SELECT DISTINCT cntry
FROM silver.erp_loc_a101
ORDER BY cntry

SELECT *
FROM silver.erp_loc_a101

== Check for unwanted spaces 
SELECT *
FROM bronze.erp_px_cat_giv2
WHERE cat != TRIM (CAT) OR subcat !=TRIM (subcat)
OR maintenance != TRIM (maintenance)

-- Data standardisation and consistency
SELECT DISTINCT
cat
FROM bronze.erp_px_cat_giv2

SELECT DISTINCT
subcat
FROM bronze.erp_px_cat_giv2

SELECT DISTINCT
maintenance
FROM bronze.erp_px_cat_giv2

SELECT *
FROM silver.erp_px_cat_g1v2

bronze.erp_loc_a101
SELECT
cid,
cntry,
FROM bronze.erp_loc_a101;

SELECT 
cst_key
FROM silver.crm_cust_info;

- -Data Standardisation and Consistency 
SELECT DISTINCT cntry
FROM bronze.erp_loc_a101
ORDER BY cntry







