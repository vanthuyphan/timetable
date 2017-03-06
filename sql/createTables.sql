create database time_table;
use time_table;
CREATE TABLE IF NOT EXISTS `_SessionSqlStore` (
	`id` VARCHAR(300) NOT NULL PRIMARY KEY,
	`data` TEXT,
	`dtime` BIGINT
) ENGINE MyISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `User` (
	`code` BIGINT NOT NULL AUTO_INCREMENT,
	`id` NVARCHAR(100) UNIQUE,
	`email` NVARCHAR(100) UNIQUE,
	`name` NVARCHAR(100),
	`password` VARCHAR(20),
	`courseCodes` VARCHAR(20),
	`isAdmin` SMALLINT,
	PRIMARY KEY (`code`)
) ENGINE MyISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Course` (
	`code` BIGINT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(200),
	`description` VARCHAR(200),
	`credits` INT,
	PRIMARY KEY (`code`)
) ENGINE MyISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Class` (
	`code` BIGINT NOT NULL AUTO_INCREMENT,
	`courseCode` BIGINT,
	`day` CHAR(3),
	`startTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`endTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`code`),
	FOREIGN KEY (courseCode) REFERENCES Course(code)
) ENGINE MyISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO `User` VALUES (1, 'v4n', 'van@gmail.com', 'Van Phan', 'pppppp', '', 0);
INSERT INTO `User` VALUES (2, 'v5n', 'van1@gmail.com', 'Phan', 'pppppp', '', 0);
INSERT INTO `User` VALUES (3, 'v6n', 'van2@gmail.com', 'Van Phan', 'pppppp', '', 0);
INSERT INTO `User` VALUES (4, 'admin', 'admin@gmail.com', 'Admin', 'pppppp', '', 1);

INSERT INTO `Course`(code, name, description, credits) VALUES(1, 'Bahasa Malaysia 200', 'Bahasa Jiwa Bangsa', 2);
INSERT INTO `Course`(code, name, description, credits) VALUES(2, 'Computer Science 215', 'Software Engineering', 3);
INSERT INTO `Course`(code, name, description, credits) VALUES(3, 'Math 221', 'Linear Algebra', 3);
INSERT INTO `Course`(code, name, description, credits) VALUES(4, 'Computer Science 201', 'Data Structures', 3);
INSERT INTO `Course`(code, name, description, credits) VALUES(5, 'Computer Science 220', 'Algorithms', 3);
INSERT INTO `Course`(code, name, description, credits) VALUES(6, 'Computer Science 250', 'Introduction to Website Design', 4);
INSERT INTO `Course`(code, name, description, credits) VALUES(7, 'Math 220', 'Differential Equations', 3);
INSERT INTO `Course`(code, name, description, credits) VALUES(8, 'English 201', 'Introduction to Literature', 3);
INSERT INTO `Course`(code, name, description, credits) VALUES(9, 'Marketing 100', 'Marketing for Dummies', 2);
INSERT INTO `Course`(code, name, description, credits) VALUES(10, 'Badminton 101', 'Learning to Beat Chong Wei', 1);

INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(1, 'Tue', '1970-01-01 10:00:00', '1970-01-01 12:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(1, 'Thu', '1970-01-01 10:00:00', '1970-01-01 12:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(2, 'Mon', '1970-01-01 09:30:00', '1970-01-01 10:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(2, 'Wed', '1970-01-01 09:30:00', '1970-01-01 10:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(2, 'Fri', '1970-01-01 09:30:00', '1970-01-01 10:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(3, 'Mon', '1970-01-01 17:30:00', '1970-01-01 18:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(3, 'Wed', '1970-01-01 17:30:00', '1970-01-01 18:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(3, 'Fri', '1970-01-01 17:30:00', '1970-01-01 18:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(4, 'Mon', '1970-01-01 13:30:00', '1970-01-01 14:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(4, 'Wed', '1970-01-01 13:30:00', '1970-01-01 14:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(4, 'Fri', '1970-01-01 13:30:00', '1970-01-01 14:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(5, 'Mon', '1970-01-01 11:30:00', '1970-01-01 12:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(5, 'Wed', '1970-01-01 11:30:00', '1970-01-01 12:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(5, 'Fri', '1970-01-01 11:30:00', '1970-01-01 12:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(6, 'Mon', '1970-01-01 16:30:00', '1970-01-01 18:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(6, 'Wed', '1970-01-01 16:30:00', '1970-01-01 18:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(6, 'Fri', '1970-01-01 16:30:00', '1970-01-01 18:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(7, 'Mon', '1970-01-01 17:30:00', '1970-01-01 18:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(7, 'Wed', '1970-01-01 17:30:00', '1970-01-01 18:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(7, 'Fri', '1970-01-01 17:30:00', '1970-01-01 18:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(8, 'Mon', '1970-01-01 14:00:00', '1970-01-01 15:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(8, 'Wed', '1970-01-01 14:00:00', '1970-01-01 15:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(8, 'Fri', '1970-01-01 14:00:00', '1970-01-01 15:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(9, 'Tue', '1970-01-01 08:30:00', '1970-01-01 10:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(9, 'Thu', '1970-01-01 08:30:00', '1970-01-01 10:00:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(10, 'Tue', '1970-01-01 15:00:00', '1970-01-01 16:30:00');
INSERT INTO `Class`(courseCode, day, startTime, endTime) VALUES(10, 'Thu', '1970-01-01 15:00:00', '1970-01-01 16:30:00');

