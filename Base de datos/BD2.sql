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
-- Table `italento`.`tipocategoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`tipocategoria` (
  `id` INT NOT NULL,
  `nombreTipo` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `nombreTipo` ON `italento`.`tipocategoria` (`nombreTipo` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`categoria`
-- -----------------------------------------------------
USE `italento` ;
CREATE TABLE IF NOT EXISTS `italento`.`categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombreCategoria` VARCHAR(50) NULL,
  `nombreTipo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`, `nombreTipo`),
  CONSTRAINT `categoria_nombreTipo`
    FOREIGN KEY (`nombreTipo`)
    REFERENCES `italento`.`tipocategoria` (`nombreTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
USE `italento` ;
CREATE UNIQUE INDEX `nombreCategoria` ON `italento`.`categoria` (`nombreCategoria` ASC) VISIBLE;
USE `italento` ;
CREATE INDEX `nombreTipoC` ON `italento`.`categoria` (`nombreTipo` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`red`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`red` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombreRed` VARCHAR(100) NOT NULL,
  `linkRed` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `nombreRed` ON `italento`.`red` (`nombreRed` ASC) VISIBLE;

CREATE UNIQUE INDEX `linkRed` ON `italento`.`red` (`linkRed` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`habilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`habilidad` (
  `idHabilidades` INT NOT NULL AUTO_INCREMENT,
  `nameH` VARCHAR(50) NOT NULL,
  `lvl` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idHabilidades`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `nameH` ON `italento`.`habilidad` (`nameH` ASC) VISIBLE;

CREATE UNIQUE INDEX `lvl` ON `italento`.`habilidad` (`lvl` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`idioma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`idioma` (
  `idIdiomas` INT NOT NULL AUTO_INCREMENT,
  `nombreI` VARCHAR(50) NULL DEFAULT NULL,
  `lvlI` VARCHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`idIdiomas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `nombreI` ON `italento`.`idioma` (`nombreI` ASC) VISIBLE;

CREATE UNIQUE INDEX `lvlI` ON `italento`.`idioma` (`lvlI` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `username` VARCHAR(50) NULL DEFAULT NULL,
  `firstName` VARCHAR(50) NULL DEFAULT NULL,
  `lastName` VARCHAR(50) NULL DEFAULT NULL,
  `decription` VARCHAR(50) NULL DEFAULT NULL,
  `profileImage` LONGBLOB NULL DEFAULT NULL,
  `isBuyer` TINYINT(1) NULL DEFAULT NULL,
  `isBoth` TINYINT(1) NULL DEFAULT NULL,
  `isFreelancer` TINYINT(1) NULL DEFAULT NULL,
  `nombreRed` VARCHAR(100) NOT NULL,
  `linkRed` VARCHAR(100) NOT NULL,
  `createdAt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `nameH` VARCHAR(50) NOT NULL,
  `lvl` VARCHAR(8) NOT NULL,
  `nombreI` VARCHAR(50) NOT NULL,
  `lvlI` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`id`, `nameH`, `lvl`, `nombreRed`, `linkRed`, `nombreI`, `lvlI`),
  CONSTRAINT `usuario_nombreRed`
    FOREIGN KEY (`nombreRed`)
    REFERENCES `italento`.`red` (`nombreRed`),
  CONSTRAINT `usuario_linkRed`
    FOREIGN KEY (`linkRed`)
    REFERENCES `italento`.`red` (`linkRed`),
  CONSTRAINT `usuario_nameH`
    FOREIGN KEY (`nameH`)
    REFERENCES `italento`.`habilidad` (`nameH`),
  CONSTRAINT `usuario_lvl`
    FOREIGN KEY (`lvl`)
    REFERENCES `italento`.`habilidad` (`lvl`),
  CONSTRAINT `usuario_nombreI`
    FOREIGN KEY (`nombreI`)
    REFERENCES `italento`.`idioma` (`nombreI`),
  CONSTRAINT `usuario_lvlI`
    FOREIGN KEY (`lvlI`)
    REFERENCES `italento`.`idioma` (`lvlI`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `nombreRed` ON `italento`.`usuario` (`nombreRed` ASC) VISIBLE;

CREATE INDEX `linkRed` ON `italento`.`usuario` (`linkRed` ASC) VISIBLE;

CREATE INDEX `nameH` ON `italento`.`usuario` (`nameH` ASC) VISIBLE;

CREATE INDEX `nombreI` ON `italento`.`usuario` (`nombreI` ASC) VISIBLE;

CREATE INDEX `usuario_lvlIdioma_idx` ON `italento`.`usuario` (`lvlI` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`gig`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`gig` (
  `idGigs` INT NOT NULL AUTO_INCREMENT,
  `titleGigs` VARCHAR(50) NOT NULL,
  `descriptionGigs` VARCHAR(50) NOT NULL,
  `categoria` VARCHAR(50) NOT NULL,
  `deliveryTime` INT NOT NULL,
  `revisions` INT NOT NULL,
  `price` INT NOT NULL,
  `shortDesc` VARCHAR(50) NOT NULL,
  `createdAt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `images` LONGBLOB NOT NULL,
  `idUser` INT NOT NULL,
  PRIMARY KEY (`idGigs`, `idUser`, `categoria`),
  CONSTRAINT `gig_usuarioId`
    FOREIGN KEY (`idUser`)
    REFERENCES `italento`.`usuario` (`id`),
  CONSTRAINT `gig_nombreCategoria`
    FOREIGN KEY (`categoria`)
    REFERENCES `italento`.`categoria` (`nombreCategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `idUser` ON `italento`.`gig` (`idUser` ASC) VISIBLE;

CREATE INDEX `gig_nombreCategoria_idx` ON `italento`.`gig` (`categoria` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`orden` (
  `idOrden` INT NOT NULL AUTO_INCREMENT,
  `createdAt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `buyerId` INT NOT NULL,
  `paymentIntent` VARCHAR(50) NULL DEFAULT NULL,
  `isCompleted` TINYINT(1) NULL DEFAULT NULL,
  `gigId` INT NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`idOrden`, `gigId`, `buyerId`),
  CONSTRAINT `orden_buyerId`
    FOREIGN KEY (`buyerId`)
    REFERENCES `italento`.`usuario` (`id`),
  CONSTRAINT `orden_gigId`
    FOREIGN KEY (`gigId`)
    REFERENCES `italento`.`gig` (`idGigs`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `paymentIntent` ON `italento`.`orden` (`paymentIntent` ASC) VISIBLE;

CREATE INDEX `buyerId` ON `italento`.`orden` (`buyerId` ASC) VISIBLE;

CREATE INDEX `gigId` ON `italento`.`orden` (`gigId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`mensaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`mensaje` (
  `idMessage` INT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(50) NOT NULL,
  `createdAt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` TINYINT NOT NULL,
  `senderId` INT NOT NULL,
  `recipientId` INT NOT NULL,
  `orderId` INT NOT NULL,
  PRIMARY KEY (`idMessage`, `orderId`, `recipientId`, `senderId`),
  CONSTRAINT `mensaje_senderId`
    FOREIGN KEY (`senderId`)
    REFERENCES `italento`.`usuario` (`id`),
  CONSTRAINT `mensaje_recipientId`
    FOREIGN KEY (`recipientId`)
    REFERENCES `italento`.`usuario` (`id`),
  CONSTRAINT `mensaje_orderId`
    FOREIGN KEY (`orderId`)
    REFERENCES `italento`.`orden` (`idOrden`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `senderId` ON `italento`.`mensaje` (`senderId` ASC) VISIBLE;

CREATE INDEX `recipientId` ON `italento`.`mensaje` (`recipientId` ASC) VISIBLE;

CREATE INDEX `orderId` ON `italento`.`mensaje` (`orderId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `italento`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italento`.`review` (
  `idReviews` INT NOT NULL AUTO_INCREMENT,
  `createdAt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` INT NOT NULL,
  `reviewText` VARCHAR(50) NOT NULL,
  `gigId` INT NOT NULL,
  `reviewerId` INT NOT NULL,
  PRIMARY KEY (`idReviews`, `reviewerId`, `gigId`),
  CONSTRAINT `review_gigId`
    FOREIGN KEY (`gigId`)
    REFERENCES `italento`.`gig` (`idGigs`),
  CONSTRAINT `review_idUsuario`
    FOREIGN KEY (`reviewerId`)
    REFERENCES `italento`.`usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `gigId` ON `italento`.`review` (`gigId` ASC) VISIBLE;

CREATE INDEX `reviewerId` ON `italento`.`review` (`reviewerId` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
