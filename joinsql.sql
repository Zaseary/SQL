use world;
select*from city;
select*from country;
select*from countrylanguage;

select count(distinct CountryCode) from city;
select count(distinct CountryCode)from country;
select count(distinct CountryCode)from countrylanguage;

select city.ID, city.Name
from city
inner join country
on city.CountryCode = country.Code;

select city.ID, city.Name
from city
left join country
on city.CountryCode = country.Code;

select city.ID, city.Name
from city
right join country
on city.CountryCode = country.Code;


SELECT city.ID,
       city.Name AS CityName,
       country.Name AS CountryName
FROM city
LEFT JOIN country
ON city.CountryCode = country.Code;

SELECT c.ID,
       c.Name AS CityName,
       co.Name AS CountryName
FROM city c
RIGHT JOIN country co
ON c.CountryCode = co.Code;


#inner join
SELECT c.ID,
	   c.District,
       cl.Language,
       cl.IsOfficial,
       c.Name as CityName,
       cl.language as countrylanguage
FROM city c
INNER JOIN countrylanguage cl
ON c.CountryCode=cl.CountryCode;



SELECT c.ID,
       c.District,
       cl.Language,
       cl.IsOfficial,
       c.Name AS CityName
FROM city c
INNER JOIN countrylanguage cl
ON c.CountryCode = cl.CountryCode;





select c.ID,c.District,cl.IsOfficial,
cl.Language AS countrylanguage
from  city c
LEFT JOIN countrylanguage cl
ON c.CountryCode = cl.CountryCode

SELECT 
    c.ID,
    c.District,
    cl.IsOfficial,
    c.Name AS cityName,
    cl.Language AS countrylanguage
FROM city c
LEFT JOIN countrylanguage cl
ON c.CountryCode = cl.CountryCode;

SELECT
c.population,
c.ID,
co.LifeExpectancy,
co.GNP,
c. Name AS cityName
FROM city c
INNER JOIN  country co
ON c.CountryCode = co.Code;

SELECT ci.ID,
ci.Name,
co.Continent,
co.Region,
ci.Name as cityName,
co.Name as country
FROM city ci
LEFT JOIN country co
ON
ci.CountryCode=co.Code;

SELECT cl.IsOfficial,
cl.Percentage,
co.GNPOld,
co.GNP,
cl.language as languagexyz,
co.Name as countryName
FROM countrylanguage cl
RIGHT JOIN country co
ON
cl.CountryCode=co.Code;

SELECT 
    cl.IsOfficial,
    cl.Percentage,
    co.GNPOld,
    co.GNP,
    cl.Language AS languagexyz,
    co.Name AS countryName
FROM countrylanguage cl
RIGHT JOIN country co
ON cl.CountryCode = co.Code;

