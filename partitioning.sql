CREATE TABLE employees_partitioned (
    emp_id INT,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE
) PARTITION BY RANGE (salary);

CREATE TABLE employees_low_salary PARTITION OF employees_partitioned
    FOR VALUES FROM (0) TO (50000);

CREATE TABLE employees_high_salary PARTITION OF employees_partitioned
    FOR VALUES FROM (50001) TO (1000000);
