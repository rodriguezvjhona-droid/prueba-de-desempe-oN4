INSERT into city VALUES
(1,'Cartagena', NULL, 'colombia'),
(2, 'Santa marta', NUll,'colombia'),
(3, 'Barranquilla', null, 'colombia');


insert into supplier values
(1,'Aceros del norte S.A.S', null,null,null,1),
(2,'Industriales sas', null,null,null,3);

INSERT INTO warehouse VALUES
(1,'Bodega Costa',NULL,2),
(2,'Centro Logistico Norte',NULL,1),
(3,'Bodega Central',NULL,3);

INSERT INTO category VALUES
(1,'Herramienta',NULL),
(2,'Consumible',NULL),
(3,'EPP',NULL),
(4,'Elementos Protección',NULL);

INSERT INTO product VALUES
(1,'Disco de Corte 4.5',NULL,115388,148,1),
(2,'Electrodo E6013',NULL,35506,27,2),
(3,'Guante Nitrilo',NULL,14290,70,3),
(4,'Guantes de Nitrilo',NULL,117524,160,4);

INSERT INTO purchase VALUES
(1,'2026-04-01',17077424,1),
(2,'2026-02-14',958662,1),
(3,'2026-01-01',1000300,2),
(4,'2026-02-16',18803840,1);

INSERT INTO purchase_detail VALUES
(1,148,115388,1,1),
(2,27,35506,2,2),
(3,70,14290,3,3),
(4,160,117524,4,4);

INSERT INTO inventory_movement VALUES
(1,'OUT',148,'2026-04-01',1,1),
(2,'IN',27,'2026-02-14',2,1),
(3,'IN',70,'2026-01-01',3,1),
(4,'IN',160,'2026-02-16',4,2);
