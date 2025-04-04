	-- This displays all the rows and columns from the table.
SELECT * FROM sacred_temples;
	-- Findings:  You'll see all temples along with their details like location, deity, description, etc.
    
    -- This selects only the 'Name' and 'State' columns.
SELECT temple_name FROM sacred_temples;
	-- Findings: Helps you quickly identify where each temple is located.
    
    -- DISTINCT is used to avoid repeating the same state name.
SELECT DISTINCT state FROM sacred_temples;
	-- Findings: You’ll get a list of all different states that have temples in your dataset.
    
    -- Alias (AS) is used to give a custom label to the column in the result.
SELECT state AS region, deity AS god FROM sacred_temples;
	-- Findings: The output will show "TempleName" and "Region" instead of "Name" and "State".
    
    -- Filters temples using Where Clause.
SELECT * FROM sacred_temples
WHERE state='Telangana';
	-- Findings: You will see all temples that belong to Telangana.
    
    -- Filters temples using Where Clause.
SELECT * FROM sacred_temples
WHERE state != 'Tamil Nadu';
	-- Findings: Excludes Tamil Nadu temples from the results.

	-- Uses AND to apply multiple filter conditions.
SELECT * FROM sacred_temples
WHERE state='Uttarkhand' AND deity='Lord Shiva'; 
	-- Findings: Shows only Uttarkhand temples dedicated to Lord Shiva.
    
	-- OR condition shows results that match at least one of the conditions.
SELECT * FROM sacred_temples
WHERE state='Kerala' OR state='Karnataka';
	-- Findings: Displays temples like Guruvayur (Kerala), Virupaksha (Karnataka), etc.

	-- % means wildcard; used for Pattern matching.
SELECT * FROM sacred_temples
WHERE temple_name LIKE '%nath';
	-- Findings: You’ll get results like Kedarnath, Badrinath, etc.

	-- IN is used to check multiple values in a column.
SELECT * FROM sacred_temples
WHERE state IN ('Maharashtra', 'Gujarat');
	-- Findings:  Will show you temples present in Maharashtra and Gujarat like Shirdi, Trimbakeshwar, Somnath, Dwarkadhish.

	-- ASC means ascending order; this sorts temples alphabetically by name.
SELECT * FROM sacred_temples
ORDER BY temple_name ASC;
	-- Findings: Arranges templenames in ascending order starting from A to Z.

	-- DESC will sort states from Z to A.
SELECT * FROM sacred_temples
ORDER BY state DESC;
	-- Findings: Arranges temples grouped from the last alphabetic state name to the first.
    
    -- LIMIT restricts the number of rows returned.
SELECT * FROM sacred_temples
LIMIT 5;
	-- Findings: Gives only 5 rows from the table.

	-- COUNT(*) returns the number of rows.
SELECT COUNT(*) AS total_temples FROM sacred_temples;
	-- Findings: You’ll know how many temples you’ve entered into the table.

	-- GROUP BY groups all rows by state and counts how many temples per group.
SELECT state, COUNT(*) AS temple_count FROM sacred_temples
GROUP BY state;
	-- Findings: Shows the distribution of temples across different states.
    
	-- Grouping by deity gives insights into which deity has more temples.
SELECT deity, COUNT(*) AS deity_count FROM sacred_temples
GROUP BY deity;
	-- Findings: Identifies the most commonly worshipped deity in the dataset.

	-- HAVING is like WHERE, but used with GROUP BY.
SELECT deity, COUNT(*) AS temple_count
FROM sacred_temples
GROUP BY deity
HAVING COUNT(*) > 1;
	-- Findings: This shows deities with more than one temple.

	-- This updates the Description of the Kedarnath temple.
UPDATE sacred_temples
SET description = 'A beautiful Jyotirlinga temple in the Himalayas.'
WHERE temple_name = 'Kedarnath';
	-- Findings: Kedarnath description will be updated in the table.

	--  Deletes a specific row based on the name.
DELETE FROM sacred_temples
WHERE temple_name = 'Badrinath';
	-- Findings: Removed the row with templename as Badrinath.

	-- The % is a wildcard.
SELECT * FROM sacred_temples
WHERE temple_name LIKE '%Sun%';
	-- Findings: finds names containing the word "Sun".
    
    -- Grouping temples by state and counting the number of temples in each
SELECT state, COUNT(*) AS temple_count
FROM sacred_temples
GROUP BY state
ORDER BY temple_count DESC;
	-- Findings: identifies states with the most religious landmarks in your dataset.

	-- The % is a wildcard.
SELECT temple_name, state
FROM sacred_temples
WHERE description LIKE '%Jyotirlinga%';
	-- Findings: Finding all Jyotirlinga temples based on description keyword.
    
    -- Limits the no.of rows to retrieve.
SELECT temple_name, LENGTH(description) AS desc_length
FROM sacred_temples
ORDER BY desc_length DESC
LIMIT 3;
	-- Findings: Shows thetemples with longest desciption.
