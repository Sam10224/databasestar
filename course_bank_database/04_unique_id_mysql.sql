/*
Lesson 04
MySQL
*/

INSERT INTO bank_transaction
(transaction_id, from_account_id, to_account_id, transaction_datetime, amount)
VALUES (1, 2, 5, NOW(), 50);

INSERT INTO bank_transaction
(transaction_id, from_account_id, to_account_id, transaction_datetime, amount)
VALUES (2, 6, 3, NOW(), 100);

INSERT INTO bank_transaction
(transaction_id, from_account_id, to_account_id, transaction_datetime, amount)
VALUES (2, 5, 1, NOW(), 10);


DROP TABLE bank_transaction;

CREATE TABLE bank_transaction (
	transaction_id INT NOT NULL AUTO_INCREMENT,
	from_account_id INT,
	to_account_id INT,
	transaction_datetime DATETIME,
	amount INT,
	CONSTRAINT pk_banktrans PRIMARY KEY (transaction_id),
	CONSTRAINT ck_btr_fracc FOREIGN KEY (from_account_id) REFERENCES cust_account(account_id),
  CONSTRAINT ck_btr_toacc FOREIGN KEY (to_account_id) REFERENCES cust_account(account_id)
);

INSERT INTO bank_transaction
(from_account_id, to_account_id, transaction_datetime, amount)
VALUES (2, 5, NOW(), 50);

INSERT INTO bank_transaction
(from_account_id, to_account_id, transaction_datetime, amount)
VALUES (6, 3, NOW(), 100);

INSERT INTO bank_transaction
(from_account_id, to_account_id, transaction_datetime, amount)
VALUES (5, 1, NOW(), 10);

SELECT *
FROM bank_transaction;
