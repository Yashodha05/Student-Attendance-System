create database attendance_system;
USE attendance_system;

CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    person_name VARCHAR(255),
    attendance INT,
    date DATE,
    time TIME
);
select * from attendance;

