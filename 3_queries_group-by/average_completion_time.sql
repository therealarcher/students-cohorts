SELECT students.name AS student,
avg(assignment_submissions.duration) AS average_assignment_duration,
avg(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration


-- SELECT id, duration, student_id FROM assignment_submissions;

-- -- average assignment duration for all assignments
-- SELECT (SUM(duration)/count(*)) FROM assignments

-- -- average assignment duration grouped by assignment
-- SELECT id, (SUM(duration)/count(*)) AS average_duration FROM assignments
-- GROUP BY id

-- -- average student assignment duration
-- SELECT (sum(duration)/count(*)) AS average_assignment_duration FROM assignment_submissions
-- WHERE student_id = 1;
