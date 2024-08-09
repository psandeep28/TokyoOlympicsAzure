-- Count the total number of athletes from each country-- 
SELECT country, count(*) as totalAthletes
From athletes
Group By Country
order by totalAthletes desc;

--Count the total number of medals from each country--
SELECT TeamCountry, Sum(Gold) TotalGold, Sum(Silver) TotalSilver, Sum(Bronze) TotalBronze
FROM medals
Group By TeamCountry
order by TotalGold desc;

--Calculate the average number of entries by gender--
SELECT Discipline, 
(CAST(Female AS float)/CAST(Total AS float)) AS Fe_Average, 
(CAST(Male AS FLOAT)/CAST(Total AS FLOAT)) AS Ma_AVG 
FROM entriesGender;