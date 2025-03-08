SELECT unique_id, name
FROM Employees e
    LEFT OUTER JOIN EmployeeUNI eu
    ON e.id = eu.id;