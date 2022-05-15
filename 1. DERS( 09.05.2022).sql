
-- SQL 1. Ders Not Defteri

/*
SQL Fundamentals
SQL'in Temelleri
*/

SELECT 1+1

SELECT 1+1;

-----------

SELECT 2+6 AS VALUE;

SELECT "Hello World" AS value;

SELECT "Hello World", 8 AS value;

SELECT "Hello World" AS Selam, 8 AS value;

------------
SELECT * FROM employees;

-- Track tablosundan Track name sutununu getiren bir sorgu yazin.

SELECT name FROM tracks;

/*Asagidaki gibi iki satirda yazmak daha anlasilir olur. Once From u yazip sonra Select in 
karsiigini yazmak daha mantikli*/

SELECT name 
FROM tracks;


SELECT name, Composer
FROM tracks;

-------------------
SELECT *
FROM tracks; /* Bunu yapmak riskli cunku eger tablo cok buyukse sorgu donmeyecek ve hata 
verebilir. O yuzden Limit koymak her zaman daha mantiklidir.*/


--- Tracks tablosundan composer' lari donduren bir sorgu yaziniz

SELECT Composer
FROM tracks;

SELECT DISTINCT Composer /* DISTINCT tekrarlayan satirlari teke indirir*/
FROM tracks;

/* DISTINCT sutunlari degil satirlari teke dusurur. */

SELECT MediaTypeId, GenreId
FROM tracks;

SELECT DISTINCT MediaTypeId, GenreId
FROM tracks;

SELECT DISTINCT *
FROM tracks; /* burda DISTINCT calismaz cunku hicbir satir digeriyle ayni degere sahip degil*/







