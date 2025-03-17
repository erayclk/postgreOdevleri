/* 1.soru
SELECT COUNT(*) 
FROM Invoice 
WHERE 
    invoice_id IS NULL AND 
    customer_id IS NULL AND 
    invoice_date IS NULL AND 
    billing_address IS NULL AND 
    billing_city IS NULL AND 
    billing_state IS NULL AND 
    billing_country IS NULL AND 
    billingpostal_code IS NULL AND 
    total IS NULL;

	*/
/* 2.soru
	SELECT 
    total AS eski_total, 
    total * 2 AS yeni_total 
FROM Invoice 
ORDER BY yeni_total DESC;

*/
//3. soru
SELECT 
    CONCAT(
        LEFT(billing_address, 3), 
        RIGHT(billing_address, 4)
    ) AS "Açık_Adres" 
FROM Invoice 
WHERE 
    invoice_date >= '2013-08-01' 
    AND invoice_date < '2013-09-01';