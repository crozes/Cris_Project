CREATE DATABASE IF NOT EXISTS myStore;
USE myStore;

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Logins;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Categories;
DROP TABLE IF EXISTS Images;

CREATE TABLE Logins (
    LoginsId INT NOT NULL AUTO_INCREMENT,
    LoginsName VARCHAR(255) NOT NULL,
    LoginPass VARCHAR(255) NOT NULL,
    PRIMARY KEY (LoginsId)
);

CREATE TABLE Users (
    UsersId INT NOT NULL AUTO_INCREMENT,
    UsersFirstName VARCHAR(255) NOT NULL,
    UsersLasttName VARCHAR(255) NOT NULL,
    UsersBirth DATE NOT NULL,
    UsersMail VARCHAR(255) NOT NULL,
    LoginsID INT NOT NULL,
    PRIMARY KEY (UsersId),
    CONSTRAINT Fk_UsersLogin FOREIGN KEY (LoginsId) REFERENCES Logins(LoginsId)
);

CREATE TABLE Images (
    ImagesId INT NOT NULL AUTO_INCREMENT,
    ImagesName VARCHAR(255),
    ImagesPath VARCHAR(255),
    PRIMARY KEY (ImagesId)
);

CREATE TABLE Categories (
    CategoriesId INT NOT NULL AUTO_INCREMENT,
    CategoriesName VARCHAR(255),
    ImagesId INT NOT NULL,
    PRIMARY KEY (CategoriesId),
    CONSTRAINT Fk_CategoriesImages FOREIGN KEY (ImagesId) REFERENCES Images(ImagesId)
);

CREATE TABLE Products(
    ProductsId INT NOT NULL AUTO_INCREMENT,
    ProductsName VARCHAR(255),
    ProductsPrice FLOAT,
    CategoriesId INT NOT NULL,
    ImageId INT NOT NULL,
    PRIMARY KEY (ProductsId),
    CONSTRAINT Fk_ProductsImages FOREIGN KEY (ImageId) REFERENCES Images(ImageId),
    CONSTRAINT Fk_ProductsCategories FOREIGN KEY (CategoriesId) REFERENCES Categories(CategoriesId)
);

INSERT INTO Logins (LoginsName, LoginPass) VALUES ('admin','admin');

INSERT INTO Users (UsersFirstName, UsersLasttName,UsersBirth,UsersMail,LoginsID) VALUES ('admin','admin','1997-5-27','admin@admin.com',1);

INSERT INTO Images (ImagesName, ImagesPath) VALUES ('foodCategory','img/Categories/food.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES ('technologyCategory','img/Categories/technology.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES ('makeupCategory','img/Categories/makeup.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES ('materialsCategory','img/Categories/materials.jpg');

INSERT INTO Categories (CategoriesName, ImagesId) VALUES ('food',1);
INSERT INTO Categories (CategoriesName, ImagesId) VALUES ('technology',2);
INSERT INTO Categories (CategoriesName, ImagesId) VALUES ('makeup',3);
INSERT INTO Categories (CategoriesName, ImagesId) VALUES ('materials',4);