#
CREATE TABLE users (
	user_id int  NOT NULL PRIMARY KEY, 
	username text
);
#
CREATE TABLE training_details (
	user_training_id int NOT NULL PRIMARY KEY, 
	user_id int NOT NULL, 
	training_id int, 
	training_date varchar(32)
);

