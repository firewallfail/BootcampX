CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL, -- had to add not null
  is_active BOOLEAN DEFAULT TRUE, -- had to add default value, and move up for some reason
  start_date DATE,
  end_date DATE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  created_at TIMESTAMP, --changed from date
  started_at TIMESTAMP, --changed from date
  completed_at TIMESTAMP, --changed from date
  student_feedback TEXT,
  teacher_feedback TEXT
);