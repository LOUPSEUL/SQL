SELECT DISTINCT AlbumId, MediaTypeId 
FROM tracks;

----  WHERE ve LIMIT -------
/* The WHERE clause is used to filter records. It allows
you to define a specific search condition for the result 
set returned by a query.*/

----- Jimi Hendrix'in bestecisi oldugu sarkilar listesi ----

SELECT Name
FROM tracks
WHERE Composer = 'Jimi Hendrix';

-- 10 dolardan yuksek tutara sahip invoice lar --

SELECT *
FROM invoices
WHERE Total > 10;

/* The LIMIT clause is used to filter records.
It constrains the number of rows returned by a query.
Syntax'in en sonuna yazilir*/

SELECT *
FROM invoices
WHERE Total > 10
LIMIT 4;

/* ORDER BY */

/* 10 dolardan yuksek tutara sahip invoice lari 
azalan sirayla */

SELECT *
FROM invoices
WHERE Total > 10
ORDER BY Total DESC;

/* AND, OR ve NOT Clauses*/
/* The AND operator is used with the WHERE clause and 
combines multiple expressions. It returns only those
records where both conditions (in WHERE clause) evaluate 
True* () SOylenen tum sartlarin uymasi lazim)/
/* OR ise sartlardan biri uysa da calisir (2 den fazla kosul 
karsilastirilacaksa hangi ikilinin once karsilastirildigini 
belirlemek icin parantez kullanilir.)*/

-- Exemple:
SELECT *
FROM employees
WHERE job_title = 'Data Scientist'
AND gender = 'Male';

-- Billing ulkesi USA olmayan faturalar ve artan sirayla total sutununu sirala

SELECT *
FROM invoices
WHERE NOT BillingCountry = 'USA'
ORDER BY Total ASC;

-- Berlin'de 2 dolardan yuksek tutara sahip faturalari getirin

SELECT *
FROM invoices
WHERE BillingCity = 'Berlin' AND Total > 2
ORDER BY Total DESC;

-- Berlin'de 2 dolardan yuksek tutara sahip faturalari getirin

SELECT *
FROM invoices
WHERE (BillingCity = 'Berlin' OR BillingCity = 'London') AND Total > 2
ORDER BY Total DESC
LIMIT 5;

/* BETWEEN Operatoru*/
-- 2009 ile 2011 yillari arasinda duzenlenen en son faturanin tarihini getir

SELECT InvoiceDate
FROM invoices
WHERE  InvoiceDate BETWEEN '2009-01-01'  AND  '2010-12-31'
ORDER BY InvoiceDate DESC
LIMIT 1;

/* In operator is used to determine whether a value matches any
value in a list. We use IN operator with WHERE clause.*/

SELECT *
FROM invoices
WHERE BillingCity IN ('Berlin', 'London') AND Total > 2
ORDER BY Total DESC
LIMIT 5;

-- NOT IN o parantez icindekilerin disinda kalan degerleri listeler

SELECT *
FROM invoices
WHERE BillingCity NOT IN ('Berlin', 'London') AND Total > 2
ORDER BY Total DESC
LIMIT 5;

-- Belcika, Norvec, Canada ve USA den siparis verenlerin isim soyisimleri

SELECT FirstName, LastName
FROM customers
WHERE country IN ('Belgium', 'Norway', 'Canada', 'USA');

/* LIKE operator:
Percent(%): matches any squences of zero or more characters.
Underscore(_): matches ans single character */

-- Bach'in parcalarini getiriniz

SELECT name
FROM tracks
WHERE Composer LIKE '%Bach';


SELECT count(*) as total_invoice
FROM invoices;

-- Invoices sayfasinda BillingState sutununda null olmayan bir degeri bulunuz.

SELECT * 
FROM invoices
WHERE BillingState NOT LIKE '%_%';












