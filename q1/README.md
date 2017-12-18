Results
=======

mysql> SELECT u.user_id, u.username, STR_TO_DATE(td.training_date, '%Y-%m-%d') as training_date, td.training_id, count(td.training_id) as tids
    -> FROM users as u, training_details as td
    -> WHERE td.user_id = u.user_id
    -> GROUP BY u.user_id, td.training_date, td.training_id
    -> HAVING tids >= 2
    -> ORDER BY training_date DESC
    -> ;
+---------+-------------+---------------+-------------+------+
| user_id | username    | training_date | training_id | tids |
+---------+-------------+---------------+-------------+------+
|       4 | Lisa Romero | 2017-08-04    |           2 |    2 |
|       4 | Lisa Romero | 2017-08-03    |           3 |    2 |
|       1 | John Doe    | 2017-08-02    |           1 |    3 |
|       3 | Alice Jones | 2017-08-02    |           2 |    2 |
+---------+-------------+---------------+-------------+------+
4 rows in set (0.01 sec)
