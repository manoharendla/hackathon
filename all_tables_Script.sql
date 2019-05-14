-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hackathon
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hackathon
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hackathon` ;
USE `hackathon` ;

-- -----------------------------------------------------
-- Table `hackathon`.`application_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackathon`.`application_details` (
  `app_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `date` DATE NULL,
  PRIMARY KEY (`app_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hackathon`.`application_environments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackathon`.`application_environments` (
  `env_id` INT NOT NULL,
  `application_details_app_id` INT NOT NULL,
  `env_name` VARCHAR(45) NULL,
  `env_description` VARCHAR(45) NULL,
  `status` TINYINT NULL,
  PRIMARY KEY (`env_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hackathon`.`environment_properties`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackathon`.`environment_properties` (
  `prop_id` INT NOT NULL,
  `env_id` VARCHAR(45) NULL,
  `env_name` VARCHAR(45) NULL,
  `prop_value` VARCHAR(45) NULL,
  `prop_description` VARCHAR(45) NULL,
  PRIMARY KEY (`prop_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hackathon`.`application_health_check`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackathon`.`application_health_check` (
  `prop_id` INT NOT NULL,
  `env_value` VARCHAR(45) NULL,
  `date` DATETIME NULL,
  `health_check_status` VARCHAR(45) NULL,
  PRIMARY KEY (`prop_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hackathon`.`db_health_check`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackathon`.`db_health_check` (
  `prop_id` INT NOT NULL,
  `host` VARCHAR(45) NULL,
  `date` DATETIME NULL,
  `metric_1` INT NULL,
  `metric_2` INT NULL,
  `metric_1_threshold` INT NULL,
  `metric_2_threshold` INT NULL,
  `metric_1_status` VARCHAR(45) NULL,
  `metric_2_status` VARCHAR(45) NULL,
  PRIMARY KEY (`prop_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
