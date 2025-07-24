-- find the percentage of employee whose marital status is divorced in the organisation
SELECT *
FROM employee_attrition;

SELECT
  ROUND(
    (SELECT COUNT(maritalstatus) 
	FROM employee_attrition 
	WHERE maritalstatus = 'Divorced') * 100.0 /
    (SELECT COUNT(maritalstatus)
	FROM employee_attrition),
    2
  ) AS Divorced_Percentage;


	
