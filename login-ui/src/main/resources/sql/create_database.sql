CREATE TABLE USERS (
    LOGIN_ID VARCHAR_IGNORECASE(50) NOT NULL PRIMARY KEY,
    PASSWORD VARCHAR_IGNORECASE(50) NOT NULL,
    ENABLED  BOOLEAN NOT NULL
);

CREATE TABLE AUTHORITIES (
    LOGIN_ID  VARCHAR_IGNORECASE(50) NOT NULL,
    ROLE VARCHAR_IGNORECASE(50) NOT NULL,
    CONSTRAINT FK_AUTHORITIES_USERS FOREIGN KEY (LOGIN_ID) REFERENCES USERS(LOGIN_ID),
    CONSTRAINT UK_AUTHORITIES UNIQUE (LOGIN_ID, ROLE)
);

INSERT INTO USERS VALUES ('fuga', 'FUGA', true);
INSERT INTO AUTHORITIES VALUES ('fuga', 'USER');