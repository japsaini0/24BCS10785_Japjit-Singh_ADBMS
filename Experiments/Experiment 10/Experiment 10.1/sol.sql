-- Write a sub-query to find 2nd & 3rd highest salary from employee table.
SELECT MAX(salary)
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);
SELECT MAX(salary)
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
    WHERE salary < (
        SELECT MAX(salary)
        FROM employee
    )
);