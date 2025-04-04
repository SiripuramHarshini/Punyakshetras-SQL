	-- This displays all the rows and columns from the table.
SELECT * FROM SacredTemples;
	-- Findings:  You'll see all temples along with their details like location, deity, description, etc.
    
    -- This selects only the 'Name' and 'State' columns.
SELECT Temple_Name FROM SacredTemples;
	-- Findings: Helps you quickly identify where each temple is located.
    
    -- DISTINCT is used to avoid repeating the same state name.
SELECT DISTINCT State FROM SacredTemples;
	-- Findings: You’ll get a list of all different states that have temples in your dataset.
    
    -- Alias (AS) is used to give a custom label to the column in the result.
SELECT State AS Region, Deity AS God FROM SacredTemples;
	-- Findings: The output will show "TempleName" and "Region" instead of "Name" and "State".
    
    -- Filters temples using Where Clause.
SELECT * FROM SacredTemples
WHERE State='Telangana';
	-- Findings: You will see all temples that belong to Telangana.
    
    -- Filters temples using Where Clause.
SELECT * FROM Sacredtemples
WHERE State != 'Tamil Nadu';
	-- Findings: Excludes Tamil Nadu temples from the results.

	-- Uses AND to apply multiple filter conditions.
SELECT * FROM SacredTemples
WHERE State='Uttarkhand' AND Deity='Lord Shiva'; 
	-- Findings: Shows only Uttarkhand temples dedicated to Lord Shiva.
    
	-- OR condition shows results that match at least one of the conditions.
SELECT * FROM SacredTemples
WHERE State='Kerala' OR State='Karnataka';
	-- Findings: Displays temples like Guruvayur (Kerala), Virupaksha (Karnataka), etc.

	-- % means wildcard; used for Pattern matching.
SELECT * FROM SacredTemples
WHERE Temple_Name LIKE '%nath';
	-- Findings: You’ll get results like Kedarnath, Badrinath, etc.

	-- IN is used to check multiple values in a column.
SELECT * FROM SacredTemples
WHERE State IN ('Maharashtra', 'Gujarat');
	-- Findings:  Will show you temples present in Maharashtra and Gujarat like Shirdi, Trimbakeshwar, Somnath, Dwarkadhish.

	-- ASC means ascending order; this sorts temples alphabetically by name.
SELECT * FROM SacredTemples
ORDER BY Temple_Name ASC;
	-- Findings: Arranges templenames in ascending order starting from A to Z.

	-- DESC will sort states from Z to A.
SELECT * FROM SacredTemples
ORDER BY State DESC;
	-- Findings: Arranges temples grouped from the last alphabetic state name to the first.
    
    -- LIMIT restricts the number of rows returned.
SELECT * FROM SacredTemples
LIMIT 5;
	-- Findings: Gives only 5 rows from the table.

	-- COUNT(*) returns the number of rows.
SELECT COUNT(*) AS TotalTemples FROM SacredTemples;
	-- Findings: You’ll know how many temples you’ve entered into the table.

	-- GROUP BY groups all rows by state and counts how many temples per group.
SELECT State, COUNT(*) AS TempleCount FROM SacredTemples
GROUP BY State;
	-- Findings: Shows the distribution of temples across different states.
    
	-- Grouping by deity gives insights into which deity has more temples.
SELECT Deity, COUNT(*) AS DeityCount FROM SacredTemples
GROUP BY Deity;
	-- Findings: Identifies the most commonly worshipped deity in the dataset.

	-- HAVING is like WHERE, but used with GROUP BY.
SELECT Deity, COUNT(*) AS TempleCount
FROM SacredTemples
GROUP BY Deity
HAVING COUNT(*) > 1;
	-- Findings: This shows deities with more than one temple.

	-- This updates the Description of the Kedarnath temple.
UPDATE SacredTemples
SET Description = 'A beautiful Jyotirlinga temple in the Himalayas.'
WHERE Temple_Name = 'Kedarnath';
	-- Findings: Kedarnath description will be updated in the table.

	--  Deletes a specific row based on the name.
DELETE FROM SacredTemples
WHERE Temple_Name = 'Badrinath';
	-- Findings: Removed the row with templename as Badrinath.

	-- The % is a wildcard.
SELECT * FROM SacredTemples
WHERE Temple_Name LIKE '%Sun%';
	-- Findings: finds names containing the word "Sun".
    
    -- Grouping temples by state and counting the number of temples in each
SELECT State, COUNT(*) AS Temple_Count
FROM SacredTemples
GROUP BY State
ORDER BY Temple_Count DESC;
	-- Findings: identifies states with the most religious landmarks in your dataset.

	-- The % is a wildcard.
SELECT Temple_Name, State
FROM SacredTemples
WHERE Description LIKE '%Jyotirlinga%';
	-- Findings: Finding all Jyotirlinga temples based on description keyword.
    
    -- Limits the no.of rows to retrieve.
SELECT Temple_Name, LENGTH(Description) AS Desc_Length
FROM SacredTemples
ORDER BY Desc_Length DESC
LIMIT 3;
	-- Findings: Shows thetemples with longest desciption.