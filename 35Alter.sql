-- Add columnn
ALTER TABLE students
ADD Email VARCHAR(150);

-- Change order of column
ALTER TABLE students
MODIFY Email VARCHAR(150)
AFTER name;

-- Modify datatype
ALTER TABLE students
MODIFY Email INT(10);

-- Add constraints
ALTER TABLE students
ADD UNIQUE (Email);

-- RENAME
ALTER TABLE students
CHANGE Email Email_id varchar(255);

-- DELETE
ALTER TABLE students
DROP COLUMN Email_id;

-- RENAME table name
ALTER TABLE students
RENAME studentss;

ALTER TABLE studentss
RENAME students;

-- 
ALTER TABLE students
AUTO_INCREMENT = 4;


