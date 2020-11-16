/Show the table’s layout
show columns from Inventory;
FIELD  	TYPE  	NULL  	KEY  	DEFAULT  
PRODUCT_NAME	VARCHAR(500)	YES		NULL
CATEGORY_NAME	VARCHAR(500)	YES		NULL
LIST_PRICE	DECIMAL(65535)	NO		NULL
BRAND_NAME	VARCHAR(500)	YES		NULL
(4 rows, 1 ms)

//Add 2 new entries.
insert into Inventory values (' Door Locks', ' Hardware', ' 179.99', ' Ultraloq '), (' Mirror', ' Decor', '
99.97', ' MCS');
Update count: 2
(1 ms)


select * from inventory;
PRODUCT_NAME  	CATEGORY_NAME  	LIST_PRICE  	BRAND_NAME  
 Refrigerator	 Appliances	2198.00	Samsung
 Refrigerator	 Appliances	1798.00	LG Electronics
 Dishwasher	 Appliances	1049.00	Bosh
 Door Locks	 Hardware	49.88	Defiant
 Door Locks	 Hardware	1798.00	Kwikset
 Door Locks	 Hardware	1049.00	 Schlage
 Toilet paper	 Cleaning	12.97	Bounty
 Toilet paper	 Cleaning	16.97	 Charmin
 Door Locks	 Hardware	179.99	 Ultraloq
 Mirror	 Decor	99.97	 MCS
(10 rows, 1 ms)


// Delete one entry

Delete from Inventory where product_name = ' Dishwasher' ;
Update count: 1
(2 ms)


select * from Inventory ;
PRODUCT_NAME  	CATEGORY_NAME  	LIST_PRICE  	BRAND_NAME  
 Refrigerator	 Appliances	2198.00	Samsung
 Refrigerator	 Appliances	1798.00	LG Electronics
 Door Locks	 Hardware	49.88	Defiant
 Door Locks	 Hardware	1798.00	Kwikset
 Door Locks	 Hardware	1049.00	 Schlage
 Toilet paper	 Cleaning	12.97	Bounty
 Toilet paper	 Cleaning	16.97	 Charmin
 Door Locks	 Hardware	179.99	 Ultraloq
 Mirror	 Decor	99.97	 MCS
(9 rows, 1 ms)


//Create a second table with the same data as the previous table
create table Inventory1 as select * from Inventory ;
Update count: 0
(3 ms)

show columns from Inventory1;
FIELD  	TYPE  	NULL  	KEY  	DEFAULT  
PRODUCT_NAME	VARCHAR(500)	YES		NULL
CATEGORY_NAME	VARCHAR(500)	YES		NULL
LIST_PRICE	DECIMAL(65535)	YES		NULL
BRAND_NAME	VARCHAR(500)	YES		NULL
(4 rows, 2 ms)


//Remove a column from the second table
alter table Inventory1 drop column brand_name;
Update count: 0
(4 ms)

show columns from Inventory1;
FIELD  	TYPE  	NULL  	KEY  	DEFAULT  
PRODUCT_NAME	VARCHAR(500)	YES		NULL
CATEGORY_NAME	VARCHAR(500)	YES		NULL
LIST_PRICE	DECIMAL(65535)	YES		NULL
(3 rows, 1 ms)


//Clear out all entries from the second table.
truncate table Inventory1 ;
Update count: 0
(0 ms)

select from Inventory1;
(no rows, 3 ms)

//Destroy the second table.
drop table Inventory1;
Update count: 0
(1 ms)
