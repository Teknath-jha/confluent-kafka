CREATE TABLE students (
    student_id NUMBER(10) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR2(10) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone_number VARCHAR2(15) UNIQUE,
    course_id NUMBER(10) NOT NULL,
    enrollment_year NUMBER(4) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);



-- Create the "addresses" table in Oracle with a foreign key constraint
CREATE TABLE addresses (
    address_id NUMBER(10) PRIMARY KEY,
    student_id NUMBER(10) NOT NULL,
    address_line1 VARCHAR2(100),
    address_line2 VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(50),
    zip_code VARCHAR2(10),
    country VARCHAR2(50),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);



-- Create the "courses" table in Oracle
CREATE TABLE courses (
    course_id NUMBER(10) PRIMARY KEY,
    course_name VARCHAR2(100) NOT NULL,
    department VARCHAR2(50) NOT NULL
);

