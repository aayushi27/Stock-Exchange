create schema `assignment`;           # creating the schema and naming it as assignment


use `assignment`;                     # using the above created schema assignment


# creating table for all the 6 stocks one by one by naming its column and specifying datatypes of column name
# After creating the columns we have loaded the data into table in their respective columns using load data infile

create table bajaj_auto(date1 date, open_price varchar(59), high_price varchar(50), low_price varchar(50),
             
             close_price varchar(50), WAP varchar(50), shares varchar(50), trades varchar(50),
             
             total_turnover varchar(50), deliver_quantity varchar(50), percentage varchar(50),
             
             spread_high_low varchar(50), spread_close_open varchar(50));

# setting sql updates to false(0) so that we can make changes 

SET SQL_SAFE_UPDATES = 0;

# loading csv file to our sql script so that we can use it in our analysis process

load data infile 'D:\Bajaj auto.csv' into table bajaj_auto
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(@date1, @open_price,@high_price,@low_price,@close_price,@WAP,@shares,@trades,@total_turnover,
@deliver_quantity,@percentage,@spread_high_low,@spread_close_open)
set date1            = str_to_date(nullif(@date1,'NULL'),'%d-%M-%Y'),           #setting the date format
    open_price       = nullif(@open_price, 'NULL'),    #putting null value if excel sheet is having any empty column
    high_price       = nullif(@high_price, 'NULL'),
	low_price        = nullif(@low_price, 'NULL'),
    close_price      = nullif(@close_price, 'NULL'),
	WAP              = nullif(@WAP, 'NULL'),
	shares           = nullif(@shares, 'NULL'),
    trades           = nullif(@trades, 'NULL'),
    total_turnover   = nullif(@total_turnover, 'NULL'),
    deliver_quantity = nullif(@deliver_quantity, 'NULL'),
	percentage       = nullif(@percentage, 'NULL'),
    spread_high_low  = nullif(@spread_high_low, 'NULL'),
    spread_close_open= nullif(@spread_close_open, 'NULL');


select * from bajaj_auto;  # Viewing the table created above

# we'll repeat the above process of creating table and viewing it for different stocks
 
create table eicher_motors(date1 date, open_price varchar(59), high_price varchar(50),
             
             low_price varchar(50), close_price varchar(50), WAP varchar(50), shares varchar(50),
			
			 trades varchar(50), total_turnover varchar(50), deliver_quantity varchar(50),
            
			 percentage varchar(50), spread_high_low varchar(50), spread_close_open varchar(50));


load data infile 'D:\Eicher Motors.csv' into table eicher_motors
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(@date1, @open_price,@high_price,@low_price,@close_price,@WAP,@shares,@trades,@total_turnover,
@deliver_quantity,@percentage,@spread_high_low,@spread_close_open)
set date1            = str_to_date(nullif(@date1,'NULL'),'%d-%M-%Y'),           #setting the date format
    open_price       = nullif(@open_price, 'NULL'),    #putting null value if excel sheet is having any empty column
    high_price       = nullif(@high_price, 'NULL'),
	low_price        = nullif(@low_price, 'NULL'),
    close_price      = nullif(@close_price, 'NULL'),
	WAP              = nullif(@WAP, 'NULL'),
	shares           = nullif(@shares, 'NULL'),
    trades           = nullif(@trades, 'NULL'),
    total_turnover   = nullif(@total_turnover, 'NULL'),
    deliver_quantity = nullif(@deliver_quantity, 'NULL'),
	percentage       = nullif(@percentage, 'NULL'),
    spread_high_low  = nullif(@spread_high_low, 'NULL'),
    spread_close_open= nullif(@spread_close_open, 'NULL');


select * from eicher_motors;


create table hero_motocorp(date1 date, open_price varchar(59), high_price varchar(50), low_price varchar(50),
             
             close_price varchar(50), WAP varchar(50), shares varchar(50), trades varchar(50),
             
             total_turnover varchar(50), deliver_quantity varchar(50), percentage varchar(50),
             
             spread_high_low varchar(50), spread_close_open varchar(50));


load data infile 'D:\Hero Motocorp.csv' into table hero_motocorp
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(@date1, @open_price,@high_price,@low_price,@close_price,@WAP,@shares,@trades,@total_turnover,
@deliver_quantity,@percentage,@spread_high_low,@spread_close_open)
set date1            = str_to_date(nullif(@date1,'NULL'),'%d-%M-%Y'),           #setting the date format
    open_price       = nullif(@open_price, 'NULL'),    #putting null value if excel sheet is having any empty column
    high_price       = nullif(@high_price, 'NULL'),
	low_price        = nullif(@low_price, 'NULL'),
    close_price      = nullif(@close_price, 'NULL'),
	WAP              = nullif(@WAP, 'NULL'),
	shares           = nullif(@shares, 'NULL'),
    trades           = nullif(@trades, 'NULL'),
    total_turnover   = nullif(@total_turnover, 'NULL'),
    deliver_quantity = nullif(@deliver_quantity, 'NULL'),
	percentage       = nullif(@percentage, 'NULL'),
    spread_high_low  = nullif(@spread_high_low, 'NULL'),
    spread_close_open= nullif(@spread_close_open, 'NULL');


select * from hero_motocorp;


create table infosys(date1 date, open_price varchar(59), high_price varchar(50), low_price varchar(50),

			 close_price varchar(50), WAP varchar(50), shares varchar(50), trades varchar(50),
             
             total_turnover varchar(50), deliver_quantity varchar(50), percentage varchar(50),
             
             spread_high_low varchar(50), spread_close_open varchar(50));


load data infile 'D:\Infosys.csv' into table infosys
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(@date1, @open_price,@high_price,@low_price,@close_price,@WAP,@shares,@trades,@total_turnover,
@deliver_quantity,@percentage,@spread_high_low,@spread_close_open)
set date1            = str_to_date(nullif(@date1,'NULL'),'%d-%M-%Y'),           #setting the date format
    open_price       = nullif(@open_price, 'NULL'),    #putting null value if excel sheet is having any empty column
    high_price       = nullif(@high_price, 'NULL'),
	low_price        = nullif(@low_price, 'NULL'),
    close_price      = nullif(@close_price, 'NULL'),
	WAP              = nullif(@WAP, 'NULL'),
	shares           = nullif(@shares, 'NULL'),
    trades           = nullif(@trades, 'NULL'),
    total_turnover   = nullif(@total_turnover, 'NULL'),
    deliver_quantity = nullif(@deliver_quantity, 'NULL'),
	percentage       = nullif(@percentage, 'NULL'),
    spread_high_low  = nullif(@spread_high_low, 'NULL'),
    spread_close_open= nullif(@spread_close_open, 'NULL');


select * from infosys;


create table tcs(date1 date, open_price varchar(59), high_price varchar(50), low_price varchar(50),

             close_price varchar(50), WAP varchar(50), shares varchar(50), trades varchar(50),
             
             total_turnover varchar(50), deliver_quantity varchar(50), percentage varchar(50),
             
             spread_high_low varchar(50), spread_close_open varchar(50));


load data infile 'D:\TCS.csv' into table tcs
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(@date1, @open_price,@high_price,@low_price,@close_price,@WAP,@shares,@trades,@total_turnover,
@deliver_quantity,@percentage,@spread_high_low,@spread_close_open)
set date1            = str_to_date(nullif(@date1,'NULL'),'%d-%M-%Y'),           #setting the date format
    open_price       = nullif(@open_price, 'NULL'),    #putting null value if excel sheet is having any empty column
    high_price       = nullif(@high_price, 'NULL'),
	low_price        = nullif(@low_price, 'NULL'),
    close_price      = nullif(@close_price, 'NULL'),
	WAP              = nullif(@WAP, 'NULL'),
	shares           = nullif(@shares, 'NULL'),
    trades           = nullif(@trades, 'NULL'),
    total_turnover   = nullif(@total_turnover, 'NULL'),
    deliver_quantity = nullif(@deliver_quantity, 'NULL'),
	percentage       = nullif(@percentage, 'NULL'),
    spread_high_low  = nullif(@spread_high_low, 'NULL'),
    spread_close_open= nullif(@spread_close_open, 'NULL');



select * from tcs;


create table tvs_motors(date1 date, open_price varchar(59), high_price varchar(50), low_price varchar(50),

             close_price varchar(50), WAP varchar(50), shares varchar(50), trades varchar(50),
             
             total_turnover varchar(50), deliver_quantity varchar(50), percentage varchar(50),
             
             spread_high_low varchar(50), spread_close_open varchar(50));


load data infile 'D:\TVS Motors.csv' into table tvs_motors
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(@date1, @open_price,@high_price,@low_price,@close_price,@WAP,@shares,@trades,@total_turnover,
@deliver_quantity,@percentage,@spread_high_low,@spread_close_open)
set date1            = str_to_date(nullif(@date1,'NULL'),'%d-%M-%Y'),           #setting the date format
    open_price       = nullif(@open_price, 'NULL'),    #putting null value if excel sheet is having any empty column
    high_price       = nullif(@high_price, 'NULL'),
	low_price        = nullif(@low_price, 'NULL'),
    close_price      = nullif(@close_price, 'NULL'),
	WAP              = nullif(@WAP, 'NULL'),
	shares           = nullif(@shares, 'NULL'),
    trades           = nullif(@trades, 'NULL'),
    total_turnover   = nullif(@total_turnover, 'NULL'),
    deliver_quantity = nullif(@deliver_quantity, 'NULL'),
	percentage       = nullif(@percentage, 'NULL'),
    spread_high_low  = nullif(@spread_high_low, 'NULL'),
    spread_close_open= nullif(@spread_close_open, 'NULL');


select * from tvs_motors;

# checking the number of rows fetched correctly or not while importing of data

select count(1) from bajaj_auto;                    # Here count function helps in counting the number of rows
select count(1) from eicher_motors;
select count(1) from hero_motocorp;
select count(1) from infosys;
select count(1) from tcs;
select count(1) from tvs_motors;

# Hence all the data has been loaded correctly that is having 889 rows.

# We need to check if dates and close price columns of any table of all the six stocks are having any null values.

select count(1) from bajaj_auto where date1 is null or close_price is null;    
select count(1) from eicher_motors where date1 is null or close_price is null;
select count(1) from hero_motocorp where date1 is null or close_price is null;
select count(1) from infosys where date1 is null or close_price is null;
select count(1) from tcs where date1 is null or close_price is null;
select count(1) from tvs_motors where date1 is null or close_price is null;

# Hence date1 and close_price is not null

#creating another table bajaj1, taking some entries from previous table and also calculating 20 day moving average and 50 day moving average
create table bajaj1 as 
select date1 as `DATE`, close_price as `CLOSE PRICE`,
case
     when (row_number() over(order by date1 asc)) < 20 then null  # using windowing function, declaring first 19 values null

     else (avg(close_price) over(order by date1 asc rows between 19 preceding and current row))

end
AS `20 Day MA`,

case
     when (row_number() over(order by date1 asc)) < 50 then null        # using windowing function, declaring first 49 values null


     else (avg(close_price) over(order by date1 asc rows between 49 preceding and current row))
end
AS `50 Day MA`
from bajaj_auto;


select * from bajaj1;# viewing the above created table
 
 # Repeating the above process for all the stocks
 
create table eicher1 as 
select date1 as `DATE`, close_price AS `CLOSE PRICE`,
case
     when (row_number() over(order by date1)) < 20 then null 

     else (avg(close_price) over(order by date1 rows between 19 preceding and current row))
end
AS `20 Day MA`,

case
     when (row_number() over(order by date1)) < 50 then null 

     else (avg(close_price) over(order by date1 rows between 49 preceding and current row))
end
AS `50 Day MA`
from eicher_motors;


select * from eicher1;


create table hero1 as 
select date1 as `DATE`, close_price AS `CLOSE PRICE`,
case
     when (row_number() over(order by date1)) < 20 then null
	 
     else (avg(close_price) over(order by date1 rows between 19 preceding and current row))
end
as `20 Day MA`,

case
     when (row_number() over(order by date1)) < 50 then null 

     else (avg(close_price) over(order by date1 rows between 49 preceding and current row))
end
AS `50 Day MA`
from hero_motocorp;

 
select * from hero1;


create table infosys1 as 
select date1 as `DATE`, close_price AS `CLOSE PRICE`,
case
     when (row_number() over(order by date1)) < 20 then null 

     else (avg(close_price) over(order by date1 rows between 19 preceding and current row))
end
AS `20 Day MA`,

case
     when (row_number() over(order by date1)) < 50 then null

     else (avg(close_price) over(order by date1 rows between 49 preceding and current row))
end
AS `50 Day MA`
from infosys;


select * from infosys1;


create table tcs1 as 
select date1 as `DATE`, close_price as `CLOSE PRICE`,
case
     when (row_number() over(order by date1)) < 20 then null

     else (avg(close_price) over(order by date1 rows between 19 preceding and current row))
end
AS `20 Day MA`,

case
     when (row_number() over(order by date1)) < 50 then null 

     else (avg(close_price) over(order by date1 rows between 49 preceding and current row))
end
AS `50 Day MA`
from tcs;


select * from tcs1;


create table tvs1 as 
select date1 AS `DATE`, close_price as `CLOSE PRICE`,
case
     when (row_number() over(order by date1)) < 20 then null

     else (avg(close_price) over(order by date1 rows between 19 preceding and current row))
end
AS `20 Day MA`,

case
     when (row_number() over(order by date1)) < 50 then null

     else (avg(close_price) over(order by date1 rows between 49 preceding and current row))
end
AS `50 Day MA`
from tvs_motors;


select * from tvs1;

#creating master table having all the close prices of all the stocks respectively by linking tables

create table master as 
select b.date1 AS `DATE`, b.close_price as BajajAuto, 
                e.close_price as EicherMotors,
                h.close_price as HeroMotocorp,
                i.close_price as Infosys,
                tc.close_price as TCS,
                tv.close_price as TVSmotors
from bajaj_auto b inner join eicher_motors e on b.date1 = e.date1
                  inner join hero_motocorp h on b.date1 = h.date1
				  inner join infosys i       on i.date1 = h.date1
				  inner join tcs tc          on tc.date1 = i.date1
                  inner join tvs_motors tv   on tc.date1 = tv.date1;


select * from master;

# creating table to calculate signal( buy, hold, sell)

create table bajaj2 as 
select `DATE`, `CLOSE PRICE`,
case when `20 Day MA` > `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) < lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'buy' 

	 when `20 Day MA` < `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) > lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'sell' 
    
     else 'hold'
    
end as `SIGNAL` 
 
from bajaj1;


select * from bajaj2;

# lag function is used to compare the values of the rows.

select count(*) 
from bajaj2
where `signal` = 'sell';

select count(*)                   # We can calculate the numner of Golden Cross(buy),
from bajaj2                         #  Death Cross(sell) and hold               
where `signal` = 'hold';

select count(*) 
from bajaj2
where `signal` = 'buy';

# repeating the above process for all the stocks

create table eicher2 as 
select `DATE`, `CLOSE PRICE`,
case when `20 Day MA` > `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) < lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'buy' 

	 when `20 Day MA` < `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) > lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'sell' 
    
     else 'hold'
    
end as `SIGNAL` 
 
from eicher1;


select * from eicher2;


select count(*) 
from eicher2
where `signal` = 'sell';

select count(*) 
from eicher2
where `signal` = 'hold';

select count(*) 
from eicher2
where `signal` = 'buy';


create table hero2 as 
select `DATE`, `CLOSE PRICE`,
case when `20 Day MA` > `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) < lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'buy' 

	 when `20 Day MA` < `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) > lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'sell' 
    
     else 'hold'
    
end as `SIGNAL` 
 
from hero1;

select * from hero2;


select count(*) 
from hero2
where `signal` = 'sell';

select count(*) 
from hero2
where `signal` = 'hold';

select count(*) 
from hero2
where `signal` = 'buy';


create table infosys2 as 
select `DATE`, `CLOSE PRICE`,
case when `20 Day MA` > `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) < lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'buy' 

	 when `20 Day MA` < `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) > lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'sell' 
    
     else 'hold'
    
end as `SIGNAL` 
 
from infosys1;


select * from infosys2;


select count(*) 
from infosys2
where `signal` = 'sell';

select count(*) 
from infosys2
where `signal` = 'hold';

select count(*) 
from infosys2
where `signal` = 'buy';


create table tcs2 as 
select `DATE`, `CLOSE PRICE`,
case when `20 Day MA` > `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) < lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'buy' 

	 when `20 Day MA` < `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) > lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'sell' 
    
     else 'hold'
    
end as `SIGNAL` 
 
from tcs1;


select * from tcs2;


select count(*) 
from tcs2
where `signal` = 'sell';

select count(*) 
from tcs2
where `signal` = 'hold';

select count(*) 
from tcs2
where `signal` = 'buy';


create table tvs2 as 
select `DATE`, `CLOSE PRICE`,
case when `20 Day MA` > `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) < lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'buy' 

	 when `20 Day MA` < `50 Day MA` and lag(`20 Day MA`, 1) OVER(order by `DATE`) > lag(`50 Day MA`, 1) OVER(order by `DATE`) then 'sell' 
    
     else 'hold'
    
end as `SIGNAL` 
 
from tvs1;

select * from tvs2;


select count(*) 
from tvs2
where `signal` = 'sell';

select count(*) 
from tvs2
where `signal` = 'hold';

select count(*) 
from tvs2
where `signal` = 'buy';

/* creating the function to extract the signal
   for a particular date in the bajaj stock */
   
create function bajaj_signal(d date) # function name -- bajaj_signal
returns varchar(20) deterministic          # d is for date, entered by the user
return 
(select `signal`                            
from bajaj2                                 # return signal for the date entered by the user
where `DATE`= d);


select 
bajaj_signal('2015-05-18') as sign      # calling the above function
from dual;                         # The DUAL table is a special one-row, one-column table present by default





