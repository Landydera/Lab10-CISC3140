// create a table call inventory with different products and their prices along with the brand name.
create table Inventory
                          (product_name varchar(500), category_name varchar(500), list_price decimal not null, brand_name varchar(500));

// Create 8 entries
insert into Inventory values (' Refrigerator', ' Appliances', ' 2198.00', 'Samsung');
insert into Inventory values (' Refrigerator', ' Appliances' , ' 1798.00', 'LG Electronics');
insert into Inventory values (' Dishwasher', ' Appliances', ' 1049.00', 'Bosh');
insert into Inventory values (' Door Locks', ' Hardware', ' 49.88', 'Defiant');
insert into Inventory values (' Door Locks', ' Hardware', ' 1798.00', 'Kwikset');
insert into Inventory values (' Door Locks', ' Hardware', ' 1049.00', ' Schlage');
insert into Inventory values (' Toilet paper', ' Cleaning' , '12.97', 'Bounty');
insert into Inventory values (' Toilet paper', ' Cleaning', ' 16.97', ' Charmin');

//Show the table’s layout
show columns from Inventory;
//Add 2 new entries.
insert into Inventory values (' Door Locks', ' Hardware', ' 179.99', ' Ultraloq '), (' Mirror', ' Decor', '
99.97', ' MCS');

select * from inventory;

// Delete one entry

Delete from Inventory where product_name = ' Dishwasher' ;

select * from Inventory ;

//Create a second table with the same data as the previous table
create table Inventory1 as select * from Inventory ;
show columns from Inventory1;

//Remove a column from the second table
alter table Inventory1 drop column brand_name;
show columns from Inventory1;

//Clear out all entries from the second table.
truncate table Inventory1 ;
select from Inventory1;
//Destroy the second table.
drop table Inventory1;








