CREATE DATABASE database_1;

USE database_1;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    enrollment_year INT NOT NULL,
    address_line1 VARCHAR(100),
    address_line2 VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    country VARCHAR(50)
);


-- Inserting sample data for students
INSERT INTO students (
    first_name,
    last_name,
    date_of_birth,
    gender,
    email,
    phone_number,
    course_name,
    department,
    enrollment_year,
    address_line1,
    address_line2,
    city,
    state,
    zip_code,
    country
) VALUES
    ('John', 'Doe', '1995-05-15', 'Male', 'john.doe@dummy.com', '123-456-7890', 'Computer Science', 'Science', 2021, '123 Main St', 'Apt 4B', 'Anytown', 'CA', '12345', 'USA'),
    ('Jane', 'Smith', '1998-09-20', 'Female', 'jane.smith@dummy.com', '987-654-3210', 'Biology', 'Science', 2020, '456 Oak Ave', 'Apt 2C', 'Smallville', 'NY', '56789', 'USA'),
    ('Mike', 'Johnson', '1997-03-08', 'Male', 'mike.johnson@dummy.com', '555-123-4567', 'History', 'Humanities', 2022, '789 Elm St', NULL, 'Bigtown', 'TX', '54321', 'USA'),
    ('Linda', 'Williams', '1996-11-25', 'Female', 'linda.w@dummy.com', '444-789-1234', 'Mathematics', 'Science', 2019, '567 Pine St', 'Apt 3D', 'Mountain City', 'CO', '67890', 'USA'),
    ('Rajesh', 'Kumar', '1999-02-12', 'Male', 'rajesh.k@dummy.com', '987-123-4567', 'Electrical Engineering', 'Engineering', 2023, '1234 Maple Rd', 'Suite 5E', 'Techville', 'CA', '34567', 'USA'),
    ('Priya', 'Sharma', '1998-07-05', 'Female', 'priya.s@dummy.com', '876-987-6543', 'Psychology', 'Social Sciences', 2021, '234 Birch St', NULL, 'Villageville', 'OR', '23456', 'USA'),
    ('Amit', 'Verma', '1997-06-18', 'Male', 'amit.v@dummy.com', '789-345-6789', 'Mechanical Engineering', 'Engineering', 2020, '567 Cedar Rd', NULL, 'Hilltop', 'WA', '45678', 'USA'),
    ('Sneha', 'Patel', '1999-04-30', 'Female', 'sneha.p@dummy.com', '555-987-1234', 'Chemistry', 'Science', 2018, '345 Redwood Ave', 'Apt 6F', 'Rivertown', 'FL', '78901', 'USA'),
    ('Vikram', 'Singh', '1998-08-02', 'Male', 'vikram.s@dummy.com', '777-222-3333', 'Civil Engineering', 'Engineering', 2017, '789 Oakwood Rd', NULL, 'Valley City', 'NC', '12345', 'USA'),
    ('Neha', 'Gupta', '1996-10-14', 'Female', 'neha.g@dummy.com', '888-666-9999', 'English Literature', 'Humanities', 2021, '456 Elmwood St', 'Suite 7G', 'Pleasantville', 'IL', '67890', 'USA');
