-- https://stackoverflow.com/questions/59993844/error-loading-local-data-is-disabled-this-must-be-enabled-on-both-the-client

-- Installing iodbc driver for macOS to install odbc driver
-- http://www.iodbc.org/dataspace/doc/iodbc/wiki/iodbcWiki/Downloads

-- Installing odbc driver
-- https://dev.mysql.com/downloads/connector/odbc/

-- Method 1
SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE "/Users/ayush/Desktop/Assignment4/airlines.csv" INTO TABLE aws_airlines.delay_status 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(`Airline` ,`Status` ,`Los.Angeles` ,`Phoenix` ,`San.Diego` ,`San.Francisco` ,`Seattle`);

-- Method 2
INSERT INTO `aws_airlines`.`delay_status`
(`Airline`,
`Status`,
`Los.Angeles`,
`Phoenix`,
`San.Diego`,
`San.Francisco`,
`Seattle`)
VALUES
('ALASKA','on time','497','221','212','503','1841'),
('ALASKA','delayed','62','12','20','102','305\r'),
('AM WEST','on time','694','4840','383','320','201\r'),
('AM WEST','delayed','117','415','54','129','61\r');