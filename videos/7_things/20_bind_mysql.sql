/*
Bind Variables - MySQL 
*/

SELECT
case_id,
case_name,
case_status,
created_date
FROM submitted_cases
WHERE assigned_to_id = ?;