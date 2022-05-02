-- original code
-- SELECT SUM(duration)
-- FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- WHERE start_date = '2018-02-12';

--This is better
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';
