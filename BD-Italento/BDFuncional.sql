-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE DATABASE  iTalento;
Use iTalento;
/*create table iTalento.Usuario (
  id INT AUTO_INCREMENT,
  email VARCHAR (50) not null,
  password VARCHAR (50) not null, 
  firstName VARCHAR(50) not null,
  lastName VARCHAR(50) not null,
  decription VARCHAR(50) not null,
  profileImage longblob,
  createdAt DateTime,
  PRIMARY KEY (id)
);
create table iTalento.Buyer (
  id INT AUTO_INCREMENT,
  email VARCHAR (50) not null,
  password VARCHAR (50) not null, 
  firstName VARCHAR(50) not null,
  lastName VARCHAR(50) not null,
  decription VARCHAR(50),
  profileImage longblob,
  createdAt DateTime,
  PRIMARY KEY (id)
);*/
CREATE TABLE iTalento.Usuario (
  id INT AUTO_INCREMENT,
  email VARCHAR (50),
  password VARCHAR (50), 
  username VARCHAR(50),
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  decription VARCHAR(50),
  profileImage LONGBLOB,
  isBuyer TINYINT(1),
  isBoth TINYINT(1),
  isFreelancer TINYINT(1),
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

/*
Use iTalento;
DELIMITER //
CREATE TRIGGER set_isBoth_and_isFreelancer 
BEFORE INSERT ON iTalento.Usuario
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
END;
//
DELIMITER ;
*/


create table iTalento.Gigs (
  idGigs INT AUTO_INCREMENT,
  titleGigs VARCHAR (50) not null, 
  descriptionGigs VARCHAR (50) not null,
  category VARCHAR (50) not null, 
  deliveryTime INT not null,
  revisions INT not null,
  price INT not null,
  shortDesc VARCHAR (50) not null, 
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  images longblob not null,
#idUser la fk user userId para crear la relación entre id de usuario y gigs
  idUser INT not null,
  PRIMARY KEY (idGigs),
  FOREIGN KEY (idUser) REFERENCES Usuario(id)
);

Use iTalento;
create table iTalento.Ordenes (
  idOrden INT AUTO_INCREMENT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  #buyer User @relation(fields: [buyerId],references: [id])
  PRIMARY KEY (idOrden),
  buyerId INT not null,
  FOREIGN KEY (buyerId) REFERENCES Buyer(id),
  paymentIntent VARCHAR (50) UNIQUE,
  isCompleted TINYINT(1),
  #gig Gigs @relation(fields:[gigId],references: [id])
  gigId INT not null,
  FOREIGN KEY (gigId) REFERENCES Gigs(idGigs),
  price INT not null
);

Use iTalento;
create table iTalento.Reviews (
  idReviews INT AUTO_INCREMENT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  rating INT not null,
  reviewText VARCHAR (50) not null,
  PRIMARY KEY (idReviews),
  #gig Gigs @relation(fields:[gigId],references: [id])
  gigId INT not null,
  FOREIGN KEY (gigId) REFERENCES Gigs(idGigs),
  #reviewer User @relation(fields: [reviewerId],references: [id])
  reviewerId INT not null,
  FOREIGN KEY (reviewerId) REFERENCES Usuario(id)
);

Use iTalento;
create table iTalento.Mensaje (
  idMessage INT AUTO_INCREMENT,
  texto VARCHAR (50) not null,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  isRead TINYINT(0) not null,
  PRIMARY KEY (idMessage),
  #sender User @relation("sentMessages", fields: [senderId], references: [id])
  senderId INT not null,
  FOREIGN KEY (senderId) REFERENCES Usuario(id),
  #recipient User @relation("receivedMessages", fields: [recipientId], references: [id])
  recipientId INT not null,
  FOREIGN KEY (recipientId) REFERENCES Usuario(id),
  #order Orders @relation(fields: [orderId], references: [id])
  orderId INT not null,
  FOREIGN KEY (orderId) REFERENCES Ordenes(idOrden)
);

SELECT * FROM Usuario;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


