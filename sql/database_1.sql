CREATE TABLE students (
    student_id NUMBER(10) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR2(10) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone_number VARCHAR2(15) UNIQUE,
    course_name VARCHAR2(100) NOT NULL,
    department VARCHAR2(50) NOT NULL,
    enrollment_year NUMBER(4) NOT NULL,
    address_line1 VARCHAR2(100),
    address_line2 VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(50),
    zip_code VARCHAR2(10),
    country VARCHAR2(50)
);



-- Inserting sample data for students
-- Insert data into the students table
INSERT INTO students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, course_name, department, enrollment_year, address_line1, address_line2, city, state, zip_code, country)
VALUES (1, 'John', 'Doe', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'Male', 'john.doe@email.com', '123-456-7890', 'Computer Science', 'Engineering', 2015, '123 Main St', 'Apt 45', 'Anytown', 'CA', '12345', 'USA');

INSERT INTO students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, course_name, department, enrollment_year, address_line1, city, state, zip_code, country)
VALUES (2, 'Jane', 'Smith', TO_DATE('1992-08-20', 'YYYY-MM-DD'), 'Female', 'jane.smith@email.com', '987-654-3210', 'Biology', 'Science', 2017, '456 Elm St', 'Othertown', 'TX', '54321', 'USA');

INSERT INTO students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, course_name, department, enrollment_year, address_line1, city, state, zip_code, country)
VALUES (3, 'Bob', 'Johnson', TO_DATE('1991-11-03', 'YYYY-MM-DD'), 'Male', 'bob.johnson@email.com', '555-555-5555', 'History', 'Arts', 2016, '789 Oak Rd', 'Another', 'NY', '67890', 'USA');
