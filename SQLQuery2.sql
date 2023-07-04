SELECT *
FROM Egypt..globalterrorismdb


--First let's count the number of all committed terrorist attacks in Egypt!

SELECT COUNT (*) as numberofrows
FROM globalterrorismdb


-- How many people died or got injured in these incidents? 

SELECT SUM(Number_of_killed) as Number_of_killed_people
FROM globalterrorismdb


SELECT SUM(Number_of_wounded) as Number_of_wounded_people
FROM globalterrorismdb


-- How about the caused damage?

SELECT SUM(Damaged_property) as Number_of_damaged_property
FROM globalterrorismdb


--Let's see the most concerning year!

SELECT YEAR, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY YEAR 
ORDER BY count DESC;


-- Let's see the most concerning months!

SELECT MONTH, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY MONTH
ORDER BY count DESC;


-- Let's check the worrisome days? Which is more dangerous, the beginning, the middle or the end of the month? 

SELECT DAY, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY DAY
ORDER BY count DESC;


-- What are the most dangerous states?

SELECT State, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY State
ORDER BY count DESC;


-- How about the most worrisome cities?

SELECT City, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY City
ORDER BY count DESC;


-- What are the most common tyoes of attacks?

SELECT Attack_type, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY Attack_type
ORDER BY count DESC;


-- What are the mostly attacked targets?

SELECT Target_type, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY Target_type
ORDER BY count DESC;


-- More specifically?

SELECT Target_subtype, COUNT(*) as count 
FROM globalterrorismdb 
WHERE Target_subtype IS NOT NUll
GROUP BY Target_subtype
ORDER BY count DESC;


-- And even more specifically?

SELECT Target_subtype_2, COUNT(*) as count 
FROM globalterrorismdb 
WHERE Target_subtype IS NOT NUll
GROUP BY Target_subtype_2
ORDER BY count DESC;


-- What were the most common nationalities of the perpetrators?

SELECT Nationality, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY Nationality
ORDER BY count DESC;


-- What do we know about the perpetrators?

SELECT Perpetrator, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY Perpetrator
ORDER BY count DESC;


-- What were the most commonly used weapons in the committed attacks?

SELECT Weapon_type, COUNT(*) as count 
FROM globalterrorismdb 
GROUP BY Weapon_type
ORDER BY count DESC;


-- More specifically? Do we know more about these weapons?

SELECT Weapon_subtype, COUNT(*) as count 
FROM globalterrorismdb 
WHERE Weapon_subtype IS NOT NUll
GROUP BY Weapon_subtype
ORDER BY count DESC;


--