-- Define the source stream for Avro data
CREATE STREAM avro_data_stream (
    student_id INT,
    first_name STRING,
    last_name STRING,
    date_of_birth DATE,
    gender STRING,
    email STRING,
    phone_number STRING,
    course_name STRING,
    department STRING,
    enrollment_year INT,
    address_line1 STRING,
    address_line2 STRING,
    city STRING,
    state STRING,
    zip_code STRING,
    country STRING
) WITH (
    KAFKA_TOPIC = 'avro_data_topic',
    VALUE_FORMAT = 'AVRO'
);

-- Create the SQL-formatted stream by selecting and projecting the Avro fields
CREATE STREAM sql_data_stream AS
SELECT
    student_id AS id,
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
FROM
    avro_data_stream
;

-- Create an output topic for the SQL-formatted data stream
CREATE OR REPLACE STREAM sql_data_stream
WITH (
    KAFKA_TOPIC = 'sql_data_topic',
    VALUE_FORMAT = 'DELIMITED', -- You can choose your desired SQL format (e.g., CSV)
    VALUE_DELIMITER = ','
);
