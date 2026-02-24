 -- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Organic_Tea_Shop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Organic_Tea_Shop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Organic_Tea_Shop` DEFAULT CHARACTER SET utf8 ;
USE `Organic_Tea_Shop` ;

-- -----------------------------------------------------
-- Table `Organic_Tea_Shop`.`Supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Organic_Tea_Shop`.`Supplier` (
  `Supplier_ID` INT NOT NULL,
  `Company_name` VARCHAR(100) NULL,
  `Contact_name` VARCHAR(45) NULL,
  ` Certification_level` VARCHAR(100) NULL,
  PRIMARY KEY (`Supplier_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Organic_Tea_Shop`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Organic_Tea_Shop`.`Products` (
  `Product_ID` INT NOT NULL,
  `Name` VARCHAR(100) NULL,
  `Type` VARCHAR(45) NULL,
  `Price_per_Ounce` DECIMAL(10,2) NULL,
  `Stock_Quantity` INT NULL,
  `Supplier_Supplier_ID` INT NOT NULL,
  PRIMARY KEY (`Product_ID`),
  INDEX `fk_Products_Supplier1_idx` (`Supplier_Supplier_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Products_Supplier1`
    FOREIGN KEY (`Supplier_Supplier_ID`)
    REFERENCES `Organic_Tea_Shop`.`Supplier` (`Supplier_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Organic_Tea_Shop`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Organic_Tea_Shop`.`Customer` (
  ` Customer_ID` INT NOT NULL,
  `First_name` VARCHAR(45) NULL,
  `Last_name` VARCHAR(45) NULL,
  `Email` VARCHAR(100) NULL,
  `Loyalty_points` INT NULL,
  PRIMARY KEY (` Customer_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Organic_Tea_Shop`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Organic_Tea_Shop`.`Sales` (
  `Sale_ID` INT NOT NULL,
  `Date` DATE NULL,
  `Total` DECIMAL(10,2) NULL,
  `Customer_ Customer_ID` INT NOT NULL,
  PRIMARY KEY (`Sale_ID`),
  INDEX `fk_Sales_Customer_idx` (`Customer_ Customer_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Sales_Customer`
    FOREIGN KEY (`Customer_ Customer_ID`)
    REFERENCES `Organic_Tea_Shop`.`Customer` (` Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Organic_Tea_Shop`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Organic_Tea_Shop`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Organic_Tea_Shop`.`Order_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Organic_Tea_Shop`.`Order_details` (
  `Sales_Sale_ID` INT NOT NULL,
  `Products_Product_ID` INT NOT NULL,
  `Quantity` INT NULL,
  PRIMARY KEY (`Sales_Sale_ID`, `Products_Product_ID`),
  INDEX `fk_Sales_has_Products_Products1_idx` (`Products_Product_ID` ASC) VISIBLE,
  INDEX `fk_Sales_has_Products_Sales1_idx` (`Sales_Sale_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Sales_has_Products_Sales1`
    FOREIGN KEY (`Sales_Sale_ID`)
    REFERENCES `Organic_Tea_Shop`.`Sales` (`Sale_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sales_has_Products_Products1`
    FOREIGN KEY (`Products_Product_ID`)
    REFERENCES `Organic_Tea_Shop`.`Products` (`Product_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


