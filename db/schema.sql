DROP DATABASE IF EXISTS RCM_db;
CREATE DATABASE RCM_db;

USE RCM_db;

CREATE TABLE precint_41 (
  last_name VARCHAR(40) NOT NULL,
  first_name VARCHAR(40) NOT NULL,
  rank VARCHAR(40) NOT NULL, 
  current_case VARCHAR(40) NOT NULL,
  district VARCHAR(20) NOT NULL,
  department TEXT NOT NULL,
  notes VARCHAR(256) NOT NULL;
);

CREATE TABLE precint_57 (
  last_name VARCHAR(40) NOT NULL,
  first_name VARCHAR(40) NOT NULL,
  rank VARCHAR(40) NOT NULL, 
  current_case VARCHAR(40) NOT NULL,
  district VARCHAR(20) NOT NULL,
  precint INT(4) NOT NULL,
  department TEXT NOT NULL,
  notes VARCHAR(256) NOT NULL;
);