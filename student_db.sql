
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS department;


CREATE TABLE department
(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

INSERT INTO department
    (dept_id, dept_name)
VALUES
    (1, 'Computer Science'),
    (2, 'Electronics'),
    (3, 'Mechanical');


CREATE TABLE student
(
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    marks INT,
    contact VARCHAR(20),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO student
    (student_id, name, dept_id, marks, contact)
VALUES
    (101, 'Sanjay V', 1, 69, '8825419481'),
    (102, 'Priya R', 1, 78, '9876543210'),
    (103, 'Kumar S', 2, 64, '8098765432'),
    (104, 'Anita L', 3, 82, '7012345678'),
    (105, 'Rahul M', 1, 75, '9056412378'),
    (106, 'Harini K', 1, 88, '9871203456'),
    (107, 'Arjun P', 2, 72, '7568392045'),
    (108, 'Deepika S', 3, 91, '9081726354'),
    (109, 'Manoj T', 1, 63, '9988776655'),
    (110, 'Sathish R', 3, 84, '9123456780'),

    (111, 'Tharun J', 2, 67, '9090909090'),
    (112, 'Lavanya D', 1, 73, '9001234567'),
    (113, 'Gokul A', 3, 59, '8112233445'),
    (114, 'Meena P', 2, 80, '9001122334'),
    (115, 'Naveen K', 1, 77, '7001235678'),
    (116, 'Vishnu S', 3, 86, '8113344556'),
    (117, 'Kavya L', 2, 71, '8224455667'),
    (118, 'Vikram R', 1, 65, '8335566778'),
    (119, 'Ramya C', 3, 95, '8446677889'),
    (120, 'Ajith M', 1, 82, '8557788990'),

    (121, 'Bharath K', 2, 74, '8668899001'),
    (122, 'Divya S', 1, 81, '8779900112'),
    (123, 'Suresh P', 3, 69, '8881001223'),
    (124, 'Anusha R', 1, 92, '8992112334'),
    (125, 'Rohit L', 2, 60, '9003223445'),
    (126, 'Pavithra M', 3, 78, '9114334556'),
    (127, 'Saran B', 1, 83, '9225445667'),
    (128, 'Monika T', 2, 88, '9336556778'),
    (129, 'Yogesh A', 3, 66, '9447667889'),
    (130, 'Jeeva S', 1, 55, '9558778990'),

    (131, 'Riya K', 1, 70, '9669889001'),
    (132, 'Akash R', 3, 62, '9770990112'),
    (133, 'Nandhini P', 2, 85, '9881101223'),
    (134, 'Siva R', 1, 79, '9992212334'),
    (135, 'Aishwarya L', 2, 81, '9003323445'),
    (136, 'Jagan S', 3, 75, '9114434556'),
    (137, 'Kirthika M', 1, 91, '9225545667'),
    (138, 'Dinesh P', 2, 72, '9336656778'),
    (139, 'Harsha R', 3, 58, '9447767889'),
    (140, 'Varsha L', 1, 87, '9558878990'),

    (141, 'Kiran J', 3, 83, '9669989001'),
    (142, 'Sundar K', 1, 76, '9771090112'),
    (143, 'Mahesh S', 2, 89, '9882201223'),
    (144, 'Keerthi A', 3, 61, '9993312334'),
    (145, 'Ramesh P', 1, 73, '9004433445'),
    (146, 'Sangeetha N', 2, 80, '9115544556'),
    (147, 'Aravind L', 1, 68, '9226655667'),
    (148, 'Preethi R', 3, 90, '9337766778'),
    (149, 'Vimal S', 2, 65, '9448877889'),
    (150, 'Sneha T', 1, 96, '9559988990');


SELECT *
FROM student;


SELECT name, marks
FROM student
WHERE marks >= 75
ORDER BY marks DESC;

SELECT s.student_id, s.name, d.dept_name, s.marks
FROM student s
    JOIN department d ON s.dept_id = d.dept_id;


SELECT d.dept_name, AVG(s.marks) AS avg_marks
FROM student s
    JOIN department d ON s.dept_id = d.dept_id
GROUP BY d.dept_name;


UPDATE student SET marks = marks + 2 WHERE student_id = 101;


DELETE FROM student WHERE student_id = 113;


SELECT name, marks,
    CASE
    WHEN marks >= 85 THEN 'Outstanding'
    WHEN marks >= 70 THEN 'Good'
    WHEN marks >= 60 THEN 'Average'
    ELSE 'Needs Improvement'
  END AS performance
FROM student;
