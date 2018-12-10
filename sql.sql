CREATE DATABASE IF NOT EXISTS myStore;
USE myStore;

DROP TABLE IF EXISTS Orders_Products;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Categories;
DROP TABLE IF EXISTS Images;


CREATE TABLE Users (
    UsersId INT NOT NULL AUTO_INCREMENT,
    UsersFirstName VARCHAR(255) NOT NULL,
    UsersLasttName VARCHAR(255) NOT NULL,
    UsersMail VARCHAR(255) NOT NULL,
    UsersPass VARCHAR(1000) NOT NULL,
    PRIMARY KEY (UsersId)
);

CREATE TABLE Images (
    ImagesId INT NOT NULL AUTO_INCREMENT,
    ImagesName VARCHAR(255),
    ImagesPath VARCHAR(255),
    PRIMARY KEY (ImagesId)
);

CREATE TABLE Categories (
    CategoriesId INT NOT NULL AUTO_INCREMENT,
    CategoriesName VARCHAR(255) NOT NULL,
    CategoriesDescription TEXT NOT NULL,
    ImagesId INT NOT NULL,
    PRIMARY KEY (CategoriesId),
    CONSTRAINT Fk_CategoriesImages FOREIGN KEY (ImagesId) REFERENCES Images(ImagesId)
);

CREATE TABLE Products(
    ProductsId INT NOT NULL AUTO_INCREMENT,
    ProductsName VARCHAR(255),
    ProductsPrice FLOAT,
    ProductsDescription TEXT NOT NULL,
    CategoriesId INT NOT NULL,
    ImagesId INT NOT NULL,
    PRIMARY KEY (ProductsId),
    CONSTRAINT Fk_ProductsImages FOREIGN KEY (ImagesId) REFERENCES Images(ImagesId),
    CONSTRAINT Fk_ProductsCategories FOREIGN KEY (CategoriesId) REFERENCES Categories(CategoriesId)
);

CREATE TABLE Orders(
    OrdersId INT NOT NULL AUTO_INCREMENT,
    OrdersNumber VARCHAR(255),
    UsersId INT NOT NULL,
    PRIMARY KEY (OrdersId),
    CONSTRAINT Fk_OrdersUsers FOREIGN KEY (UsersId) REFERENCES Users(UsersId)
);

CREATE TABLE Orders_Products(
    ProductsId INT NOT NULL,
    OrdersId INT NOT NULL,
    CONSTRAINT Fk_OrdersProducts_Products FOREIGN KEY (ProductsId) REFERENCES Products(ProductsId),
    CONSTRAINT Fk_OrdersProducts_Orders FOREIGN KEY (OrdersId) REFERENCES Orders(OrdersId)
);

INSERT INTO Users (UsersFirstName, UsersLasttName,UsersMail,UsersPass) VALUES ('admin','admin','admin@admin.com','admin');

INSERT INTO Images (ImagesName, ImagesPath) VALUES ('foodCategory','img/Categories/food.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES ('technologyCategory','img/Categories/technology.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES ('makeupCategory','img/Categories/makeup.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES ('materialsCategory','img/Categories/materials.jpg');

INSERT INTO Images (ImagesName, ImagesPath) VALUES('delicatessen','img/Products/food2.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('asian','img/Products/food3.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('sushi','img/Products/food4.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('mediterranan prod','img/Products/food5.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('android','img/Products/tech2.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('supercomputer','img/Products/tech3.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('watch','img/Products/tech4.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('car','img/Products/tech5.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('makeup2','img/Products/makeup2.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('makeup3','img/Products/makeup3.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('makeup4','img/Products/makeup4.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('makeup5','img/Products/makeup5.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('scissor','img/Products/scissor.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('pen','img/Products/pen.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('glue','img/Products/glue.jpg');
INSERT INTO Images (ImagesName, ImagesPath) VALUES('eraser','img/Products/eraser.jpg');

INSERT INTO Categories (CategoriesName, CategoriesDescription, ImagesId) VALUES ('Food','blablabla',1);
INSERT INTO Categories (CategoriesName, CategoriesDescription, ImagesId) VALUES ('Technology','blablabla',2);
INSERT INTO Categories (CategoriesName, CategoriesDescription, ImagesId) VALUES ('Makeup','blablabla',3);
INSERT INTO Categories (CategoriesName, CategoriesDescription, ImagesId) VALUES ('Materials','blablabla',4);

INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Delicatessen', 50.00,'Trés belle table d apero entre amis. (bonne traduction)',1,5);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Asian', 51.00,'Trés belle table de plat tipiquement asiatique à deguster entre amis. (bonne traduction)',1,6);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Sushi', 52.00,'Trés belle assiette de sushi japonais à deguster entre amis. (bonne traduction)',1,7);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Mediterranan', 53.00,'Trés belle assortiment de produit méditéranéen à déguster entre amis. (bonne traduction)',1,8);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Android', 54.00,'Voici votre nouveau compagnon fidèle, solide et repondant à tous vos besoins. (bonne traduction)',2,9);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Supercomputer', 55.00,'Voici un supercalculateur au performances de calcul extrème.  (bonne traduction)',2,10);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Watch', 56.00,'Voici votre nouvelles montre connectée dernière génération ... (bonne traduction)',2,11);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Car', 57.00,'Voici votre nouvelle voiture électrique 100% autonome . (bonne traduction)',2,12);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Makeup 2', 58.00,'Voici votre nouveau kit de maquillage qui sera vous rendre plus rayonnante que jamais. (bonne traduction)',3,13);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Makeup 3', 59.00,'Voici votre nouveau kit de maquillage qui sera vous rendre plus rayonnante que jamais. (bonne traduction)',3,14);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Makeup 4', 60.00,'Voici votre nouveau kit de maquillage qui sera vous rendre plus rayonnante que jamais. (bonne traduction)',3,15);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Makeup 5', 61.00,'Voici votre nouveau kit de maquillage qui sera vous rendre plus rayonnante que jamais. (bonne traduction)',3,16);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Scissor', 62.00,'Voici nos ciseaux pour bien débuter en découpage en tout genre . (bonne traduction)',4,17);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Pen', 63.00,'Voici votre nouveau stylos dragon qui rendra jaloux tous vos amis. (bonne traduction)',4,18);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Glue', 64.00,'Voici de la colle, c est juste de la colle... (bonne traduction)',4,19);
INSERT INTO Products ( ProductsName, ProductsPrice, ProductsDescription, CategoriesId,ImagesId) VALUES ('Eraser', 65.00,' Gomme de trés bonne qualitées effacera jusqu à vos problèmes... (bonne traduction)',4,20);

SELECT *
FROM Categories c, Images i
WHERE c.ImagesId = i.ImagesId;