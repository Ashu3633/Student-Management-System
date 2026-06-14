-- Create Database
CREATE DATABASE student_management;

USE student_management;

-- Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender VARCHAR(10),
    dob DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200)
);

-- Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    credits INT
);

-- Enrollment Table
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert Student Data
INSERT INTO Students(name, gender, dob, email, phone, address)
VALUES
('Rahul Sharma','Male','2004-05-12','rahul@gmail.com','9876543210','Kanpur'),
('Priya Singh','Female','2005-01-20','priya@gmail.com','9876543211','Lucknow');

-- Insert Course Data
INSERT INTO Courses(course_name, credits)
VALUES
('DBMS',4),
('Data Structures',3);

-- Insert Enrollment Data
INSERT INTO Enrollment(student_id, course_id, enrollment_date)
VALUES
(1,1,'2025-06-14'),
(2,2,'2025-06-14');

-- View Students
SELECT * FROM Students;

-- View Courses
SELECT * FROM Courses;

-- View Enrollment
SELECT * FROM Enrollment;

-- Final Project Output
SELECT s.name, c.course_name
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;