DROP DATABASE IF EXISTS RCM_db;
CREATE DATABASE RCM_db;

USE RCM_db;

CREATE TABLE department (
  precinct INT(4) NOT NUll  
  dep_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (precinct)
);

CREATE TABLE role (
  badge_id VARCHAR(6) NOT NULL,
  rank VARCHAR(20) NOT NULL,
  salary VARCHAR (8) NOT NULL,
  station INT (4) NOT NULL,
  FOREIGN KEY (badge_id)
  REFERENCES department (precinct)
  ON DELETE SET NULL
);

CREATE TABLE officers (
  dep_id INT(9) NOT NULL,
  first_name VARCHAR (40) NOT NULL,
  last_name VARCHAR (40) NOT NULL,
  rank VARCHAR (25) NOT NULL,
  supervisor INT (12) NOT NULL,
  ON DELETE SET NULL
)