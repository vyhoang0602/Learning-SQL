SELECT *                                -- Chọn tất cả các cột
FROM public.employee_demographics;      -- Có thể từ bảng, hoặc đối với postgre là schema.table_name




SELECT first_name,   -- Chọn nhiều cột
    last_name,
    birth_date,
    age,
    age + 10 AS age_plus_ten  -- Tạo một cột mới với tên là age_plus_ten, nếu ko có lệnh sau AS, trong bảng khi run sẽ ra ?column?
FROM public.employee_demographics;

--PEMDAS

-- Câu lệnh DISTINCT: tìm ra những giá trị khác biệt 


SELECT DISTINCT gender --với một cột
FROM public.employee_demographics;

SELECT DISTINCT first_name, gender --với hai cột
FROM public.employee_demographics;

--WHERE Clause: nêu điều kiện
SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie';


SELECT *
FROM employee_salary
WHERE salary >50000;


--AND OR NOT - logical operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male'
;


SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44)
OR age > 45
;


-- LIKE Statements
--%: anything and _: specific value
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

-- a__: tức là có 2 ký tự sau chữ a, không hơn, không kém

--Group by : gộp các giá trị giống nhau
SELECT gender, AVG(age), MAX(age), MIN(age), count(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;


--order by
--ASC: Ascending: tăng dần
--DESC: descending: giảm dần
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;
;


SELECT *
FROM employee_demographics
ORDER BY gender, age -- xếp theo gender trước, sau đó mới sắp age
;


