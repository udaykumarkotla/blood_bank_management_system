create database donor;
use donor;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE donors (
  id int(11) NOT NULL,
  fname varchar(45) NOT NULL,
  mname varchar(30) DEFAULT NULL,
  lname varchar(45),
  sex varchar(10) NOT NULL,
  b_type varchar(3) NOT NULL,
  bday date NOT NULL,
  h_address varchar(50) NOT NULL,
  city varchar(30) NOT NULL,
  don_date date NOT NULL,
  stats text NOT NULL,
  temp varchar(10) NOT NULL,
  pulse varchar(10) NOT NULL,
  bp varchar(10) NOT NULL,
  weight int(11) NOT NULL,
  hemoglobin varchar(25) NOT NULL,
  hbsag varchar(10) NOT NULL,
  aids varchar(15) NOT NULL,
  malaria_smear varchar(20) NOT NULL,
  hematocrit varchar(15) NOT NULL,
  phone varchar(10) DEFAULT NULL,
  mobile varchar(11) NOT NULL
);

desc donors;
INSERT INTO donors (id, fname, mname, lname, sex, b_type, bday, h_address, city, don_date, stats, temp, pulse, bp, weight, hemoglobin, hbsag, aids, malaria_smear, hematocrit, phone, mobile) VALUES
(1, 'Kaushik', '', 'Balu', 'male', 'O+', '2000-07-16', '2-51 gopalapatnam', 'Visakapatnam', '2015-04-18', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '2632181', '9827983762'),
(2, 'Kiran', '', 'Prakash', 'male', 'A+', '2001-02-02', '5-51 MVP COLONY', 'Visakapatnam', '2015-04-18', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '', '8602042302'),
(3, 'Subba', '', 'Reddy', 'male', 'O+', '2002-02-28', '6-62 janardhanapuram', 'Vijaywada', '2015-04-19', 'Normal', '30', '70', '80 | 120', 52, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '', '8269036096'),
(4, 'Uday', '', 'Kumar', 'male', 'AB+', '2001-08-05', '4-53 penumaka', 'Guntur', '2019-05-05', '50', '30', '77', '120', 65, '90', '50', 'Negative', 'No', '50', '06189789', '98456545'),
(5, 'benarji', '', '', 'male', 'O-', '2000-05-05', '2-90 gudiwada', 'Vijayanagaram', '2019-11-11', 'Good', '35', '88', '120', 66, '50', '50', 'Negative', 'Negative', '50', '', '98988'),
(6, 'Vijay', '', 'Satvik', 'male', 'A+', '2000-08-08', '3-15 Pendurthi', 'Visakapatnam', '2019-11-11', 'normal', '35', '56', '125', 65, '50', '55', 'Negative', 'Negative', '88', '', '88995566'),
(7, 'Sreekar', '', 'Teja', 'male', 'B-', '2000-05-05', '4-80 bantumalli', 'Machilipatnam', '2019-11-11', 'Normal', '30', '50', '120', 66, '15', '50', 'Negative', 'Negative', '50', '', '9988');


CREATE TABLE employees (
  id int(11) NOT NULL,
  f_name varchar(35) NOT NULL,
  m_name varchar(15) DEFAULT NULL,
  l_name varchar(35),
  username varchar(15) NOT NULL,
  password varchar(15) NOT NULL,
  b_day date NOT NULL,
  prc_nr int(25) NOT NULL,
  designation varchar(35) NOT NULL,
  landline varchar(10) DEFAULT NULL,
  mobile_nr varchar(11) NOT NULL
);


INSERT INTO employees (id, f_name, m_name, l_name, username, password, b_day,designation, landline, mobile_nr) VALUES
(16, 'Uday', '', 'Teja', 'admin', '1234567890', '2000-07-16', 'Employee', '2632181', '9827983762'),
(26, 'Kaushik', '', 'Balu', '318126510026', 'password', '2001-07-16','Employee', '2632181', '9827983762'),
(27, 'Kiran', '', 'Prakash', '318126510027', 'password', '2000-07-16','Employee', '2632181', '9827983762'),
(28, 'Subba', '', 'Reddy', '318126510028', 'password', '2002-07-16', 'Employee', '2632181', '9827983762'),
(29, 'Uday', '', 'Kumar', '318126510029', 'password', '2000-07-16', 'Employee', '2632181', '9827983762'),
(30, 'Benarji', '', '', '318126510030', 'password', '2001-07-16', 'Employee', '2632181', '9827983762');

desc employees;
ALTER TABLE donors
  ADD PRIMARY KEY (id);

ALTER TABLE employees
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY username (username);
desc employees;

ALTER TABLE donors
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;



