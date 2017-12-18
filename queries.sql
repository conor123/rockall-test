#
SELECT * FROM users;
#
SELECT * FROM training_details;
# q1 
# Write a query to get the list of users who took the a training lesson more than once in the same day, 
# grouped by user and training lesson, 
# each ordered from the most recent lesson date to oldest date.
SELECT u.user_id, u.username, sum(td.training_id)
FROM users as u, training_details as td
WHERE td.user_id = u.user_id
#WHERE count(td.training_id) >= 2

;
