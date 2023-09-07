-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema italento
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema italento
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `italento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `italento` ;

-- -----------------------------------------------------
-- Table `italento`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `firstName` VARCHAR(50) NOT NULL,
  `lastName` VARCHAR(50) NOT NULL,
  `decription` VARCHAR(50) NOT NULL,
  `profileImage` LONGBLOB NOT NULL,
  `isBuyer` TINYINT(1) NOT NULL,
  `isBoth` TINYINT(1) NOT NULL,
  `isFreelancer` TINYINT(1) NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `italento`.`gigs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`gigs` (
  `idGigs` INT NOT NULL AUTO_INCREMENT,
  `titleGigs` VARCHAR(50) NOT NULL,
  `descriptionGigs` VARCHAR(50) NOT NULL,
  `category` VARCHAR(50) NOT NULL,
  `deliveryTime` INT NOT NULL,
  `revisions` INT NOT NULL,
  `price` INT NOT NULL,
  `shortDesc` VARCHAR(50) NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `images` LONGBLOB NOT NULL,
  `idUser` INT NOT NULL,
  PRIMARY KEY (`idGigs`, `idUser`),
  CONSTRAINT `gigs_ibfk_1`
    FOREIGN KEY (`idUser`)
    REFERENCES `italento`.`usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `idUser` ON `italento`.`gigs` (`idUser` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`ordenes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`ordenes` (
  `idOrden` INT NOT NULL AUTO_INCREMENT,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `buyerId` INT NOT NULL,
  `paymentIntent` VARCHAR(50) NOT NULL,
  `isCompleted` TINYINT(1) NOT NULL,
  `gigId` INT NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`idOrden`, `gigId`),
  CONSTRAINT `ordenes_ibfk_1`
    FOREIGN KEY (`buyerId`)
    REFERENCES `italento`.`buyer` (`id`),
  CONSTRAINT `ordenes_ibfk_2`
    FOREIGN KEY (`gigId`)
    REFERENCES `italento`.`gigs` (`idGigs`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `paymentIntent` ON `italento`.`ordenes` (`paymentIntent` ASC) VISIBLE;

CREATE INDEX `buyerId` ON `italento`.`ordenes` (`buyerId` ASC) VISIBLE;

CREATE INDEX `gigId` ON `italento`.`ordenes` (`gigId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`mensaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`mensaje` (
  `idMessage` INT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(50) NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` TINYINT NOT NULL,
  `senderId` INT NOT NULL,
  `recipientId` INT NOT NULL,
  `orderId` INT NOT NULL,
  PRIMARY KEY (`idMessage`, `orderId`, `senderId`, `recipientId`),
  CONSTRAINT `mensaje_ibfk_1`
    FOREIGN KEY (`senderId`)
    REFERENCES `italento`.`usuario` (`id`),
  CONSTRAINT `mensaje_ibfk_2`
    FOREIGN KEY (`recipientId`)
    REFERENCES `italento`.`usuario` (`id`),
  CONSTRAINT `mensaje_ibfk_3`
    FOREIGN KEY (`orderId`)
    REFERENCES `italento`.`ordenes` (`idOrden`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `senderId` ON `italento`.`mensaje` (`senderId` ASC) VISIBLE;

CREATE INDEX `recipientId` ON `italento`.`mensaje` (`recipientId` ASC) VISIBLE;

CREATE INDEX `orderId` ON `italento`.`mensaje` (`orderId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`reviews` (
  `idReviews` INT NOT NULL AUTO_INCREMENT,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` INT NOT NULL,
  `reviewText` VARCHAR(50) NOT NULL,
  `gigId` INT NOT NULL,
  `reviewerId` INT NOT NULL,
  PRIMARY KEY (`idReviews`, `gigId`, `reviewerId`),
  CONSTRAINT `reviews_ibfk_1`
    FOREIGN KEY (`gigId`)
    REFERENCES `italento`.`gigs` (`idGigs`),
  CONSTRAINT `reviews_ibfk_2`
    FOREIGN KEY (`reviewerId`)
    REFERENCES `italento`.`usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `gigId` ON `italento`.`reviews` (`gigId` ASC) VISIBLE;

CREATE INDEX `reviewerId` ON `italento`.`reviews` (`reviewerId` ASC) VISIBLE;

USE `italento`;

DELIMITER $$
USE `italento`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `italento`.`set_isBoth_and_isFreelancer`
BEFORE INSERT ON `italento`.`usuario`
FOR EACH ROW
BEGIN
  IF NEW.isBuyer = 1 AND NEW.isBoth = 1 THEN
    SET NEW.isFreelancer = 1;
  ELSEIF NEW.isBuyer = 1 AND NEW.isBoth = 0 THEN
    SET NEW.isFreelancer = 0;
  ELSEIF NEW.isBuyer = 0 THEN
    SET NEW.isBoth = 0;
    SET NEW.isFreelancer = 1;
  END IF;
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
