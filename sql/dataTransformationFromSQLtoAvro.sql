-- Define the source stream for SQL data
CREATE STREAM sql_data_stream (
    student_id INT,
    first_name VARCHAR,
    last_name VARCHAR,
    date_of_birth DATE,
    gender VARCHAR,
    email VARCHAR,
    phone_number VARCHAR,
    course_name VARCHAR,
    department VARCHAR,
    enrollment_year INT,
    address_line1 VARCHAR,
    address_line2 VARCHAR,
    city VARCHAR,
    state VARCHAR,
    zip_code VARCHAR,
    country VARCHAR
) WITH (
    KAFKA_TOPIC = 'sql_data_topic',
    VALUE_FORMAT = 'DELIMITED', -- Assuming data is in delimited format (e.g., CSV)
    VALUE_DELIMITER = ','
);

-- Define the Avro schema that matches the structure of the students table
CREATE OR REPLACE SCHEMA avro_schema
WITH (
    TYPE = 'STRUCT',
    FIELDS = [
        { "name": "student_id", "type": "INT" },
        { "name": "first_name", "type": "STRING" },
        { "name": "last_name", "type": "STRING" },
        { "name": "date_of_birth", "type": "DATE" },
        { "name": "gender", "type": "STRING" },
        { "name": "email", "type": "STRING" },
        { "name": "phone_number", "type": "STRING" },
        { "name": "course_name", "type": "STRING" },
        { "name": "department", "type": "STRING" },
        { "name": "enrollment_year", "type": "INT" },
        { "name": "address_line1", "type": "STRING" },
        { "name": "address_line2", "type": "STRING" },
        { "name": "city", "type": "STRING" },
        { "name": "state", "type": "STRING" },
        { "name": "zip_code", "type": "STRING" },
        { "name": "country", "type": "STRING" }
    ]
);

-- Create the Avro-formatted stream by projecting the SQL data into the Avro schema
CREATE STREAM avro_data_stream AS
SELECT
    student_id,
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
    sql_data_stream
;

-- Create an output topic for the Avro-formatted data stream
CREATE OR REPLACE STREAM avro_data_stream
WITH (
    KAFKA_TOPIC = 'avro_data_topic',
    VALUE_FORMAT = 'AVRO',
    AVRO_SCHEMA_FULL_NAME = 'avro_schema'
);
