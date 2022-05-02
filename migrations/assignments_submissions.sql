CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT, -- VARCHAR(255)
  day INT, --DATE
  chapter INT,
  duration INT -- TIME
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INT REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INT REFERENCES students(id) ON DELETE CASCADE,
  duration INT, --TIME
  submission_date DATE
);

-- comments are original answer, I expected time/date related fields to use
-- those types instead of int