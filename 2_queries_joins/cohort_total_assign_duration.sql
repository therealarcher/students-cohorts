SELECT sum(assignment_submissions.duration) AS total_duration
FROM assignment_submissions INNER JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';