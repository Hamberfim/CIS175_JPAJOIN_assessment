use appliances_two;

-- execute each one at a time
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `appliance_items`;
DROP TABLE IF EXISTS `shopper`;
DROP TABLE IF EXISTS `list_details`;
DROP TABLE IF EXISTS `items_on_list`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `appliance_items` (`ID` int NOT NULL AUTO_INCREMENT, 
				`MAKER` varchar(35) NOT NULL,
				`MODEL` varchar(35) NOT NULL,
				`CATEGORY` varchar(35) NOT NULL,
				PRIMARY KEY (`ID`));

CREATE TABLE `shopper` (`SHOPPER_ID` int not null auto_increment,
			`SHOPPER_NAME` varchar(30) not null, 
			PRIMARY KEY (`SHOPPER_ID`));

CREATE TABLE `list_details` (`LIST_ID` int not null auto_increment, 
			`LIST_NAME` varchar(30), 
			`TRIP_DATE` DATE, 
			`SHOPPER_ID` int, 
			PRIMARY KEY (`LIST_ID`), 
			FOREIGN KEY (`SHOPPER_ID`) references shopper(`SHOPPER_ID`));

CREATE TABLE `items_on_list` (`ITEM_ID` int not null, 
			`LIST_ID` int not null, 
			FOREIGN KEY (`LIST_ID`) references `list_details` (`LIST_ID`), 
			FOREIGN KEY (`ITEM_ID`) references `appliance_items` (`ID`));

INSERT INTO appliance_items (MAKER, MODEL, CATEGORY) 
	VALUES 
	('Instant pot','7-in-1 Vortex','Air Fryer'), 
	('KitchenAid','KCO253','Toaster Oven'),
	('Bialetti','Moka 6 Cup Express','Espresso Maker'), 
	('Ninja Pro','Nutri-BL456','Blender'), 
	('Sunbeam','x11 -Four Slot','Toaster'), 
	('Instant Pot','DUO EVO Plus','Pressure Cooker'), 
	('Ronco','Rhinestone Stud Setter','Stud Setter'), 
	('Ronco','Chop-O-Matic','hand food processor'), 
	('Bialetti','1.5 Liter Ceramic Kettle','Electric Kettle'), 
	('Ronco','Dial-O-Matic','Hand Chopper');
	