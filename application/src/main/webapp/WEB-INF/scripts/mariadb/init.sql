CREATE DATABASE IF NOT EXISTS sbc;
USE sbc;

CREATE TABLE restcomm_instance_id ( 
instance_id VARCHAR(34) NOT NULL PRIMARY KEY,
date_created DATETIME NOT NULL,
date_updated DATETIME NOT NULL,
host VARCHAR(255) NOT NULL
);

CREATE TABLE restcomm_accounts (
sid VARCHAR(34) NOT NULL PRIMARY KEY,
date_created DATETIME NOT NULL,
date_updated DATETIME NOT NULL,
email_address MEDIUMTEXT NOT NULL,
friendly_name VARCHAR(64) NOT NULL,
account_sid VARCHAR(34),
type VARCHAR(8) NOT NULL,
status VARCHAR(16) NOT NULL,
auth_token VARCHAR(32) NOT NULL,
role VARCHAR(64) NOT NULL,
uri MEDIUMTEXT NOT NULL
);



CREATE TABLE restcomm_http_cookies (
sid VARCHAR(34) NOT NULL PRIMARY KEY,
comment MEDIUMTEXT,
domain MEDIUMTEXT,
expiration_date DATETIME,
name MEDIUMTEXT NOT NULL,
path MEDIUMTEXT,
value MEDIUMTEXT,
version INT
);



CREATE TABLE restcomm_call_detail_records (
sid VARCHAR(34) NOT NULL PRIMARY KEY,
parent_call_sid VARCHAR(34),
date_created DATETIME NOT NULL,
date_updated DATETIME NOT NULL,
account_sid VARCHAR(34) NOT NULL,
sender VARCHAR(30) NOT NULL,
recipient VARCHAR(64) NOT NULL,
phone_number_sid VARCHAR(34),
status VARCHAR(20) NOT NULL,
start_time DATETIME,
end_time DATETIME,
duration INT,
price VARCHAR(8),
direction VARCHAR(20) NOT NULL,
answered_by VARCHAR(64),
api_version VARCHAR(10) NOT NULL,
forwarded_from VARCHAR(30),
caller_name VARCHAR(50),
uri MEDIUMTEXT NOT NULL,
call_path VARCHAR(255),
ring_duration INT,
instanceid VARCHAR(255),
conference_sid VARCHAR(34),
muted BOOLEAN, 
start_conference_on_enter BOOLEAN,
end_conference_on_exit BOOLEAN,
on_hold BOOLEAN
);


CREATE TABLE restcomm_recordings (
sid VARCHAR(34) NOT NULL PRIMARY KEY,
date_created DATETIME NOT NULL,
date_updated DATETIME NOT NULL,
account_sid VARCHAR(34) NOT NULL,
call_sid VARCHAR(34) NOT NULL,
duration DOUBLE NOT NULL,
api_version VARCHAR(10) NOT NULL,
uri MEDIUMTEXT NOT NULL,
file_uri MEDIUMTEXT
);


CREATE TABLE update_scripts (
script VARCHAR(255) NOT NULL,
date_executed DATETIME NOT NULL
);

INSERT INTO restcomm_accounts VALUES (
"ACae6e420f425248d6a26948c17a9e2acf",
Date("2012-04-24"),
Date("2012-04-24"),
"administrator@company.com",
"Default Administrator Account",
null,
"Full",
"uninitialized",
"77f8c12cc7b8f8423e5c38b035249166",
"Administrator",
"/2012-04-24/Accounts/ACae6e420f425248d6a26948c17a9e2acf");

