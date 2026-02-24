Use Organic_Tea_Shop ;
 insert into Supplier
 Values
 (1115, "Caraway tea and botanicals","Jess","USDA Organic"),
 (1156,"The Tea Can Company","Robert","EU Organic"),
 (1139,"Full Tea Co.","Aaron","Fair Trade"),
(1108,"Summit Tea","Andrew","100% Organic");

 insert into Customer
 Values
 (3020, "Brenda", "Williams", "BrendaW@gmail.com", 1000),
 (3030, "Caitlin" , "Stevenson" , "CaitlinS10@gmail.com" , 2500),
 (3040, "Rose" , "Flores" ,"Roseflores50@gmail.com", 6000),
 (3050, "Winter" , "Gonzales" , "WintersnowG@gmail.com" ,8650) ;

insert into Products
 values
 (1050,"Peppermint","Herbal",5.50,300,1115),
(1067,"Matcha","Green",11.00,260,1156),
 (1080,"Earl Grey","Black",4.50,190,1139),
(1036,"White Peony","White",6.00,50,1108) ;

insert into sales
 Values
(4011,"2026-01-25",150.00,3020),
 (4065,"2026-01-24",750.00,3040),
(4022,"2026-01-24",225.00,3050);

insert into Organic_Tea_Shop.Order_details
Values
(4011,1050,2),
(4023,1067,1);


