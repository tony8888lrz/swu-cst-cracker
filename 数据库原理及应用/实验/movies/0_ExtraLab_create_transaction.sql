-- CREATE TABLE `TRANSACTION1`;

CREATE TABLE TRANSACTION1(
customer_no		int(11)		NOT NULL,	 	 	 	 	 	 	
customer_firstname 	varchar(32)	NOT NULL,	 	 	 	 	 	 	
customer_lastname 	varchar(32)	NOT NULL,	 	 	 	 	 	
customer_street		varchar(32)	NOT NULL,		 	 	 	 	 	 	
customer_town		varchar(32)	NOT NULL,		 	 	 	 	 	 	
account_no		int(11)		NOT NULL, 	 	 	 	 	 	
account_type		varchar(32)	NOT NULL,		 	 	 	 	 	 	
account_balance		int(11)		NOT NULL, 	 	 	 	
date	        	date		NOT NULL,			 	 	 	 	 	 	
description		varchar(32)	NOT NULL,		 	 	 	 	 	 	
amount          	int(11)		NOT NULL,
CONSTRAINT pk_TRANSACTION1 PRIMARY KEY(customer_no,account_no,account_balance,date,description,amount)
);

INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('001', 'James', 'Bond', 'Queen Street', 'Auckland', '007', 'Savings', '50000', '2013-05-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('002', 'James', 'Bond', 'Queen Street', 'Auckland', '008', 'Savings', '50000', '2013-06-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('003', 'James', 'Bond', 'Queen Street', 'Auckland', '009', 'Savings', '50000', '2013-07-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('004', 'James', 'Bond', 'Queen Street', 'Auckland', '010', 'Savings', '50000', '2013-08-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('005', 'James', 'Bond', 'Queen Street', 'Auckland', '011', 'Savings', '50000', '2013-09-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('006', 'James', 'Bond', 'Queen Street', 'Auckland', '012', 'Savings', '50000', '2013-10-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('007', 'James', 'Bond', 'Queen Street', 'Auckland', '013', 'Savings', '50000', '2013-11-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('008', 'James', 'Bond', 'Queen Street', 'Auckland', '014', 'Savings', '50000', '2013-12-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('009', 'James', 'Bond', 'Queen Street', 'Auckland', '015', 'Savings', '50000', '2014-01-20', 'Salary', '15000');
INSERT INTO `TRANSACTION1` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`, `account_no`, `account_type`, `account_balance`, `date`, `description`, `amount`) VALUES ('010', 'James', 'Bond', 'Queen Street', 'Auckland', '016', 'Savings', '50000', '2014-02-20', 'Salary', '15000');


CREATE TABLE CUSTOMER(
customer_no		int(11)		NOT NULL,	 	 	 	 	 	 	
customer_firstname 	varchar(32)	NOT NULL,	 	 	 	 	 	 	
customer_lastname 	varchar(32)	NOT NULL,	 	 	 	 	 	
customer_street		varchar(32)	NOT NULL,		 	 	 	 	 	 	
customer_town		varchar(32)	NOT NULL,		 	 	 	 	 	 	
CONSTRAINT pk_CUSTOMER PRIMARY KEY(customer_no)
);

CREATE TABLE ACCOUNT(	 	 	 	 	 	
account_no		int(11)		NOT NULL, 	 	 	 	 	 	
account_type		varchar(32)	NOT NULL,		 	 	 	 	 	 	
CONSTRAINT pk_ACCOUNT PRIMARY KEY(account_no)
);

CREATE TABLE TRANSACTION2(
customer_no		int(11)		NOT NULL,	 	 	 	 	 	 		 	 	 	 	 	 	
account_no		int(11)		NOT NULL, 	 	 	 	 	 		 	 	 	 	 	 	
account_balance		int(11)		NOT NULL, 	 	 	 	
date	        	date		NOT NULL,			 	 	 	 	 	 	
description		varchar(32)	NOT NULL,		 	 	 	 	 	 	
amount          	int(11)		NOT NULL,
CONSTRAINT pk_TRANSACTION2 PRIMARY KEY(customer_no,account_no,account_balance,date,description,amount),
CONSTRAINT fk1_TRANSACTION2 FOREIGN KEY(customer_no) REFERENCES CUSTOMER(customer_no),
CONSTRAINT fk2_TRANSACTION2 FOREIGN KEY(account_no) REFERENCES ACCOUNT(account_no)
);

INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('007', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('008', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('009', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('010', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('011', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('012', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('013', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('014', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('015', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('016', 'Savings');

INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('107', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('108', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('109', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('110', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('111', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('112', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('113', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('114', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('115', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('116', 'Savings');

INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('207', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('208', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('209', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('210', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('211', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('212', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('213', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('214', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('215', 'Savings');
INSERT INTO `ACCOUNT` (`account_no`, `account_type`) VALUES ('216', 'Savings');

INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('001', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('002', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('003', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('004', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('005', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('006', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('007', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('008', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('009', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('010', 'James', 'Bond', 'Queens Street', 'Auckland');

INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('101', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('102', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('103', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('104', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('105', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('106', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('107', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('108', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('109', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('110', 'James', 'Bond', 'Queens Street', 'Auckland');

INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('201', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('202', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('203', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('204', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('205', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('206', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('207', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('208', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('209', 'James', 'Bond', 'Queens Street', 'Auckland');
INSERT INTO `CUSTOMER` (`customer_no`, `customer_firstname`, `customer_lastname`, `customer_street`, `customer_town`) VALUES ('210', 'James', 'Bond', 'Queens Street', 'Auckland');


INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('1', '7', '50000', '2013-05-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('2', '8', '50000', '2013-06-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('3', '9', '50000', '2013-07-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('4', '10', '50000', '2013-08-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('5', '11', '50000', '2013-09-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('6', '12', '50000', '2013-10-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('7', '13', '50000', '2013-11-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('8', '14', '50000', '2013-12-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('9', '15', '50000', '2014-01-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('10', '16', '50000', '2014-02-20', 'Salary', '15000');

INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('101', '107', '50000', '2013-05-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('102', '108', '50000', '2013-06-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('103', '109', '50000', '2013-07-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('104', '110', '50000', '2013-08-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('105', '111', '50000', '2013-09-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('106', '112', '50000', '2013-10-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('107', '113', '50000', '2013-11-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('108', '114', '50000', '2013-12-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('109', '115', '50000', '2014-01-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('110', '116', '50000', '2014-02-20', 'Salary', '15000');

INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('201', '207', '50000', '2013-05-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('202', '208', '50000', '2013-06-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('203', '209', '50000', '2013-07-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('204', '210', '50000', '2013-08-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('205', '211', '50000', '2013-09-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('206', '212', '50000', '2013-10-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('207', '213', '50000', '2013-11-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('208', '214', '50000', '2013-12-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('209', '215', '50000', '2014-01-20', 'Salary', '15000');
INSERT INTO `TRANSACTION2` (`customer_no`, `account_no`, `account_balance`, `date`, `description`, `amount`) VALUES ('210', '216', '50000', '2014-02-20', 'Salary', '15000');



SELECT account_type
FROM transaction2 t, customer c, account a
WHERE t.account_no = a.account_no
AND t.customer_no = c.customer_no
AND c.customer_town =  "Auckland"
AND t.amount >=10000
LIMIT 0 , 30