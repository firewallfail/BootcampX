SELECT AVG(total)
FROM(SELECT SUM(completed_at - started_at) as total
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name) as totals;