-- =========================================
-- DATA GOVERNANCE & DATA QUALITY ANALYSIS
-- =========================================

-- 1. TOTAL RECORD COUNT
SELECT COUNT(*) AS total_records
FROM customers;

-- =========================================
-- 2. MISSING DATA ANALYSIS
-- =========================================

-- Missing Emails
SELECT COUNT(*) AS missing_emails
FROM customers
WHERE email IS NULL OR email = '';

-- Missing Phones
SELECT COUNT(*) AS missing_phones
FROM customers
WHERE phone IS NULL OR phone = '';

-- Missing Country
SELECT COUNT(*) AS missing_country
FROM customers
WHERE country IS NULL OR country = '';

-- =========================================
-- 3. PERCENTAGE OF MISSING DATA
-- =========================================

SELECT 
ROUND(
(SUM(CASE WHEN email IS NULL OR email = '' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
2) AS pct_missing_email
FROM customers;

-- =========================================
-- 4. INVALID EMAIL DETECTION
-- =========================================

SELECT *
FROM customers
WHERE email NOT LIKE '%@%.%' OR email IS NULL OR email = '';

-- =========================================
-- 5. DUPLICATE RECORD DETECTION
-- =========================================

SELECT customer_id, COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- =========================================
-- 6. DATA QUALITY SCORE
-- =========================================

SELECT 
customer_id,
(
    CASE WHEN email IS NOT NULL AND email LIKE '%@%.%' THEN 1 ELSE 0 END +
    CASE WHEN phone IS NOT NULL AND phone <> '' THEN 1 ELSE 0 END +
    CASE WHEN country IS NOT NULL AND country <> '' THEN 1 ELSE 0 END
) AS data_quality_score
FROM customers;

-- =========================================
-- 7. RISK CLASSIFICATION
-- =========================================

SELECT 
customer_id,
CASE 
    WHEN email IS NULL OR email = '' THEN 'HIGH RISK'
    WHEN email NOT LIKE '%@%.%' THEN 'MEDIUM RISK'
    ELSE 'LOW RISK'
END AS risk_level
FROM customers;

-- =========================================
-- 8. COUNTRY DISTRIBUTION
-- =========================================

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country;

-- =========================================
-- 9. DATA CONSISTENCY CHECK
-- =========================================

-- Find invalid phone numbers
SELECT *
FROM customers
WHERE phone NOT LIKE '___-___-____';
