DELETE FROM BiostatisticsData 
WHERE F12='Hourly';

DELETE FROM BiostatisticsData
WHERE F11 is NULL;

-- Obtain Total Average Salary
Select AVG(cast(F11 as int)) as AverageSalary 
FROM BiostatisticsData;

-- Creates Table Comparing Education and Salary
Select F23 as Education, F11 as Salary
FROM BiostatisticsData
WHERE F23 is not Null;

-- Average PHD Salary
Select AVG(cast(F11 as int)) as PHDSalary
From BiostatisticsData
Where F23 = 'Doctorate';
-- Average Master's Salary
Select AVG(cast(F11 as int)) as MastersSalary
From BiostatisticsData
Where F23 = 'Master''s ';
-- Average Bachelor's Salary
Select AVG(cast(F11 as int)) as BachelorSalary
From BiostatisticsData
Where F23 = 'Bachelor''s ';

-- Create Table Comparing YOE with Salary
Select F16 as YOE, F11 as Salary
From BiostatisticsData
Where F16 is not NULL AND F11 is not NULL;

-- Male or Female
Select F20 as Gender, F11 as Salary
From BiostatisticsData
Where F20 is not NULL and F11 is not NULL;

--Average Male and Female
Select AVG(cast(F11 as int)) as FemaleSal
From BiostatisticsData
Where F20 = 'Female' or F20 = 'Woman' or F20 = 'F';

Select AVG(cast(F11 as int)) as MaleSal
From BiostatisticsData
Where F20 = 'Male' or F20 = 'M' or F20 = 'Man';