CREATE DATABASE Twister;
USE Twister;

CREATE TABLE USERS (
    user_id int NOT NULL,
    username char(100) NOT NULL,
    email_address char(50) NOT NULL,
    password_hash char(50) NOT NULL,
    first_name char(50) NOT NULL,
    last_name char(50) NOT NULL,
    total_interviews int,
    PRIMARY KEY (user_id)
);

CREATE TABLE SLOT (
    slot_id int NOT NULL AUTO_INCREMENT,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    PRIMARY KEY (slot_id)
);

CREATE TABLE INTERVIEW (
    interview_link char(20) NOT NULL,
    interview_datetime DATETIME NOT NULL,
    PRIMARY KEY (interview_link)
);

CREATE TABLE BOOKS (
    meeting_id int,
    user_id int NOT NULL,
    interview_link char(20) NOT NULL,
    FOREIGN KEY ( user_id ) REFERENCES USERS ( user_id ),
    FOREIGN KEY ( interview_link ) REFERENCES INTERVIEW( interview_link ),
    PRIMARY KEY( meeting_id )
);


CREATE TABLE AVAILABLE (
    user_id int NOT NULL,
    slot_id INT NOT NULL,
    FOREIGN KEY ( user_id ) REFERENCES USERS( user_id ),
    FOREIGN KEY ( slot_id ) REFERENCES SLOT( slot_id )
);

