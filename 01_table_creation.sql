CREATE SCHEMA  IF NOT EXISTS `aws_airlines` ;

USE  `aws_airlines` ;

CREATE TABLE `aws_airlines`.`delay_status` (
  `Airline` VARCHAR(45) NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Los.Angeles` VARCHAR(4) NOT NULL,
  `Phoenix` VARCHAR(4) NOT NULL,
  `San.Diego` VARCHAR(4) NOT NULL,
  `San.Francisco` VARCHAR(4) NOT NULL,
  `Seattle` VARCHAR(4) NOT NULL);
