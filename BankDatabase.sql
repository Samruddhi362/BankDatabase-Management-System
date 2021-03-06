CREATE DATABASE BankDetails;
USE BankDetails;

-- CUSTOMER DETAILS
CREATE TABLE CD
( CUSTOMER_ID VARCHAR(50),
CUSTOMER_NAME VARCHAR(20),
CUSTOMER_AGE char(2) ,
ADDRESS VARCHAR(50),
CONTACT_NO BIGINT(50),
GENDER CHAR(1),
IDENTIFICATION_DOCUMENTTYPE VARCHAR(20),
CITIZENSHIP VARCHAR(20) ,
CONSTRAINT CUST_PER_INFO_PK PRIMARY KEY( CUSTOMER_ID )
);

show tables;
CREATE TABLE REFRENCE_DETAILS
( CUSTOMER_ID varchar(50),
  Account_number varchar(50),
   CONSTRAINT CUST_PER_INFO_PK PRIMARY KEY( CUSTOMER_ID),
  CONSTRAINT CUST_PER_INFO_FK FOREIGN KEY( CUSTOMER_ID)REFERENCES  CD(CUSTOMER_ID)
  );
  SHOW TABLES;
  CREATE TABLE BANK_INFO
  (
  IFSC_CODE VARCHAR(50),
  BRANCH_NAME VARCHAR(30),
  BANK_NAME VARCHAR(50),
  CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
  );
  
  SHOW TABLES;
  CREATE TABLE ACCOUNT_INFO
  ( 
     CUSTOMER_ID varchar(50),
     IFSC_CODE VARCHAR(50),
	
     CONSTRAINT ACC_INFO_PER_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CD(CUSTOMER_ID),
     CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE) REFERENCES BANK_INFO( IFSC_CODE)
     );
     
	
    INSERT INTO CD( CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_AGE) VALUES('SBI362000' ,'SAMRUDDHI JADHAV', '21' )
  SELECT * FROM CD;
  
  
  
   



 

