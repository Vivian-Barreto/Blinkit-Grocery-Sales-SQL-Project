show databases;

use vivian;

#1
select * from vivian.sql_project sp ;
#2
select Item_Identifier from sql_project sp ;
#3
select count(Item_Identifier) from sql_project sp ;
#4
select max(ITEM_WEIGHT) from sql_project sp ; 
select  ITEM_WEIGHT from sql_project sp ;
#5
select min(ITEM_WEIGHT)from sql_project sp ;
#6
select avg(Item_Weight)from sql_project sp ;
#7
select count(Item_Fat_Content)from sql_project sp 
where Item_Fat_Content ='Low Fat';
#8
select count(item_fat_content)from sql_project sp 
where Item_Fat_Content ='Regular';
select count(Item_Fat_Content) from sql_project sp ;

#9
select max(item_mrp) from sql_project sp ; 
#10
select min(item_mrp)from sql_project sp ; 

#11
select  Item_Identifier , Item_Fat_Content ,Item_Type ,Item_MRP 
from sql_project sp 
where Item_MRP >200 ;
#12
select Item_Fat_Content , max(Item_MRP) from sql_project sp 
where item_fat_content="low fat";

#13
select Item_Fat_Content , min(Item_MRP)
from sql_project sp 
where item_fat_content="low fat";

#14
select * from sql_project sp 
where Item_MRP between 50 and 100;

#15
select distinct item_fat_content from sql_project sp;

#16
select distinct item_type from sql_project sp ;

#17
select * from sql_project sp order by Item_MRP desc;

#18
select * from sql_project sp order by Item_Outlet_Sales asc;

#19
select * from sql_project sp order by Item_Type asc;

#20
select * from sql_project sp where Item_Type in ('Dairy','Meat');

#21 
select distinct outlet_size from sql_project sp ;

#22
select distinct outlet_location_type from sql_project sp ;

#23
select distinct Outlet_Type from sql_project sp ;

#24
select Item_Type , count(item_identifier) No_of_item 
from sql_project sp 
group by item_type
order by No_of_item desc;

#25
select outlet_size , count(item_identifier) No_of_item
from sql_project sp 
group by Outlet_Size 
order by No_of_item  asc;

#26
select Outlet_Type  , count(item_identifier) No_of_item
from sql_project sp 
group by Outlet_Type  
order by No_of_item  desc;

#27
select Outlet_Location_Type  , count(item_identifier) No_of_item
from sql_project sp 
group by Outlet_Location_Type  
order by No_of_item  desc;

#28
select item_type , max(item_mrp) Max_mrp
from sql_project sp 
group by Item_Type ;

#29
select item_type , min(item_mrp) Min_mrp
from sql_project sp 
group by Item_Type ;

#30
select outlet_establishment_year , min(item_mrp) as minimum_mrp
from sql_project sp 
group  by Outlet_Establishment_Year 
order by minimum_mrp desc;

#31
select outlet_establishment_year , max(item_mrp) as maximum_mrp
from sql_project sp 
group  by Outlet_Establishment_Year 
order by maximum_mrp desc;

#32
select outlet_size ,avg(item_mrp) Average_mrp
from sql_project sp 
group by Outlet_Size 
order by Average_mrp desc;

#33
select outlet_type ,avg(item_mrp) Average_mrp
from sql_project sp 
group by Outlet_type 
order by Average_mrp asc;

#34
select Outlet_Type ,max(item_mrp)as Maximum_mrp
from sql_project sp 
group by Outlet_Type 
order by maximum_mrp;

#35
select Item_Type ,max(Item_Weight) Maximum_weight
from sql_project sp 
group by item_type
order by maximum_weight;

#36
select outlet_establishment_year , max(item_weight) Max_weight
from sql_project sp 
group by Outlet_Establishment_Year 
order by Max_weight;

#37
select outlet_type ,min(item_weight) Min_weight
from sql_project sp 
group by Outlet_Type 
order by Min_weight;

#38
select  outlet_establishment_year , avg(item_weight) as Avg_weight 
from sql_project sp 
group by Outlet_Establishment_Year 
order by Avg_weight desc;

#39
select item_type , max(item_outlet_sales) as Max_outlet_sales
from sql_project sp 
group by Item_Type 
order by Max_outlet_sales ;

#40
select item_type , min(item_outlet_sales) as Min_outlet_sales
from sql_project sp 
group by Item_Type 
order by Min_outlet_sales ;

#41
select Outlet_Establishment_Year  , min(item_outlet_sales) as Min_outlet_sales
from sql_project sp 
group by Outlet_Establishment_Year  
order by Min_outlet_sales ;

#42
select item_type , max(item_outlet_sales) as Max_outlet_sales
from sql_project sp 
group by Item_Type 
order by Max_outlet_sales desc;

#43
select outlet_size , avg(item_outlet_sales) as Avg_outlet_sales
from sql_project sp 
group by Outlet_Size 
order by Avg_outlet_sales desc;

#44
select Outlet_Type , avg(item_outlet_sales) as Avg_outlet_sales
from sql_project sp 
group by Outlet_Type  
order by Avg_outlet_sales;

#45
select outlet_type , max(item_outlet_sales) as Max_outlet_sales
from sql_project sp 
group by Outlet_Type
order by Max_outlet_sales ;

#46
select item_type ,sum(item_outlet_sales) Sum_outlet_sales
from sql_project sp 
group by Item_Type 
order by Sum_outlet_sales ;

#47
select Item_Fat_Content  , sum(ITEM_OUTLET_SALES) Total_outletsales
from sql_project sp 
group by Item_Fat_Content  
order by total_outletsales ;

#48
select item_type , max(item_visibility) Max_visibility
from sql_project sp 
group by Item_Type 
order  by Max_visibility ;

#49
select item_type , min(item_visibility) Min_visibility
from sql_project sp 
group by Item_Type 
order  by Min_visibility ;

#50
select item_type ,sum(item_outlet_sales) as Total_outlet_sales ,Outlet_Location_Type 
from sql_project sp where Outlet_Location_Type =('tier 1')
group by Item_Type 
order by Total_outlet_sales ;

#51
select item_type , sum(item_outlet_sales)as Total_outlet_sales 
from  sql_project sp 
where Item_Fat_Content in('Low Fat','LF')
group by Item_Type 
order by total_outlet_sales ;

