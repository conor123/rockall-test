#
SELECT * FROM users;
#
SELECT * FROM training_details;
# q1 
# Write a query to get the list of users who took a training lesson more than once in the same day, 
# grouped by user and training lesson, 
# each ordered from the most recent lesson date to oldest date.
SELECT u.user_id, u.username, STR_TO_DATE(td.training_date, '%Y-%m-%d') as training_date, td.training_id, count(td.training_id) as tids
FROM users as u, training_details as td
WHERE td.user_id = u.user_id
GROUP BY u.user_id, td.training_date, td.training_id 
HAVING tids >= 2
ORDER BY training_date DESC
;
