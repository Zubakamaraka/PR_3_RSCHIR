CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;


USE appDB;

CREATE TABLE IF NOT EXISTS accounts(
	acc_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	username VARCHAR(50) NOT NULL,
  	passwords VARCHAR(50) NOT NULL,
  	email VARCHAR(100) NOT NULL
);




INSERT INTO accounts (username, passwords, email) VALUES ('admin', 'admin', 'test@test.com');
INSERT INTO accounts (username, passwords, email) VALUES ('test_user1', 'admin', 'test@test.com');
INSERT INTO accounts (username, passwords, email) VALUES ('test_user2', 'admin', 'test@test.com');
INSERT INTO accounts (username, passwords, email) VALUES ('test_user3', 'admin', 'test@test.com');

CREATE TABLE IF NOT EXISTS mesto(
	mesto_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	mesto_user VARCHAR(50) NOT NULL,
  	mesto_img LONGBLOB
);

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('admin', LOAD_FILE('D:/php/pr_3/src/images/1666860862guard-dog-german-sheppard.svg'));

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('test_user1', LOAD_FILE('D:/php/pr_3/src/images/Husky.svg'));

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('admin', LOAD_FILE('D:/php/pr_3/src/images/papapishu_Basset_hound.svg'));

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('test_user2', LOAD_FILE('D:/php/pr_3/src/images/papapishu_Beagle_dog.svg'));

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('test_user1', LOAD_FILE('D:/php/pr_3/src/images/papapishu_Boxer_1.svg'));

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('admin', LOAD_FILE('D:/php/pr_3/src/images/fd7e63e5.svg'));

