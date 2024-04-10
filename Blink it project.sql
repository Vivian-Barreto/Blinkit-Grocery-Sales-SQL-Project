show databases;
use vivian;

#Q1 Import data from table sql_project sp using the provided CSV File.
select * from vivian.sql_project sp ;

#Q2 Write an SQL query to show all Item_Identifier.
select Item_Identifier from sql_project sp ;

#Q3 Write an SQL query to show count of total Item_Identifier.
select count(Item_Identifier) from sql_project sp ;

#Q4 Write an SQL query to show maximum Item Weight.
select max(ITEM_WEIGHT) from sql_project sp ;

#Q5 Write an SQL query to show minimum Item Weight.
select min(ITEM_WEIGHT)from sql_project sp ;

#Q6 Write an SQL query to show average Item_Weight
select avg(Item_Weight)from sql_project sp ;

#Q7 Write an SQL query to show count of Item_Fat_Content where Item_Fat_Content is Low Fat.
select count(Item_Fat_Content)from sql_project sp 
where Item_Fat_Content ='Low Fat';

#Q8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(item_fat_content)from sql_project sp 
where Item_Fat_Content ='Regular';

#Q9 Write an SQL query to show maximum Item_MRP.
select max(item_mrp) from sql_project sp ; 

#Q10 Write an SQL query to show minimum Item_MRP.
select min(item_mrp)from sql_project sp ; 

#Q11 Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP 
whose Item_MRP is greater than 200.
select  Item_Identifier , Item_Fat_Content ,Item_Type ,Item_MRP 
from sql_project sp 
where Item_MRP >200 ;

#Q12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat.
select Item_Fat_Content , max(Item_MRP) from sql_project sp 
where item_fat_content="low fat";

#Q13 Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat.
select Item_Fat_Content , min(Item_MRP)
from sql_project sp 
where item_fat_content="low fat";

#Q14 Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100.
select * from sql_project sp 
where Item_MRP between 50 and 100;

#Q15 Write an SQL query to show ALL UNIQUE value of Item_Fat_Content.
select distinct item_fat_content from sql_project sp;

#Q16 Write an SQL query to show ALL UNIQUE value of  Item_Type.
select distinct item_type from sql_project sp ;

#Q17 Write an SQL query to show ALL DATA in descending ORDER by Item MRP.
select * from sql_project sp order by Item_MRP desc;

#Q18 Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales.
select * from sql_project sp order by Item_Outlet_Sales asc;

#Q19 Write an SQL query to show ALL DATA in ascending by Item_Type. 
select * from sql_project sp order by Item_Type asc;

#Q20 Write an SQL query to show DATA of item_type dairy & Meat.
select * from sql_project sp where Item_Type in ('Dairy','Meat');

#Q21 Write an SQL query to show ALL UNIQUE value of Outlet_Size.
select distinct outlet_size from sql_project sp ;

#Q22 Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type.
select distinct outlet_location_type from sql_project sp ;

#Q23 Write an SQL query to show ALL UNIQUE value of Outlet_Type.
select distinct Outlet_Type from sql_project sp ;

#Q24 Write an SQL query to show count of number of items by Item_Type  and order it in descending order.
select Item_Type , count(item_identifier) No_of_item 
from sql_project sp 
group by item_type
order by No_of_item desc;

#Q25 Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order.
select outlet_size , count(item_identifier) No_of_item
from sql_project sp 
group by Outlet_Size 
order by No_of_item  asc;

#Q26 Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
select Outlet_Type  , count(item_identifier) No_of_item
from sql_project sp 
group by Outlet_Type  
order by No_of_item  desc;

#Q27 Write an SQL query to show count of items by Outlet_Location_Type and order it in descending order.
select Outlet_Location_Type  , count(item_identifier) No_of_item
from sql_project sp 
group by Outlet_Location_Type  
order by No_of_item  desc;

#Q28 Write an SQL query to show maximum MRP by Item_Type.
select item_type , max(item_mrp) Max_mrp
from sql_project sp 
group by Item_Type ;

#Q29 Write an SQL query to show minimum MRP by Item_Type.
select item_type , min(item_mrp) Min_mrp
from sql_project sp 
group by Item_Type ;

#Q30 Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year , min(item_mrp) as minimum_mrp
from sql_project sp 
group  by Outlet_Establishment_Year 
order by minimum_mrp desc;

#Q31 Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year , max(item_mrp) as maximum_mrp
from sql_project sp 
group  by Outlet_Establishment_Year 
order by maximum_mrp desc;

#Q32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select outlet_size ,avg(item_mrp) Average_mrp
from sql_project sp 
group by Outlet_Size 
order by Average_mrp desc;

#Q33 Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select outlet_type ,avg(item_mrp) Average_mrp
from sql_project sp 
group by Outlet_type 
order by Average_mrp asc;

#Q34 Write an SQL query to show maximum MRP by Outlet_Type.
select Outlet_Type ,max(item_mrp)as Maximum_mrp
from sql_project sp 
group by Outlet_Type 
order by maximum_mrp;

#Q35 Write an SQL query to show maximum Item_Weight by Item_Type.
select Item_Type ,max(Item_Weight) Maximum_weight
from sql_project sp 
group by item_type
order by maximum_weight;

#Q36 Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year.
select outlet_establishment_year , max(item_weight) Max_weight
from sql_project sp 
group by Outlet_Establishment_Year 
order by Max_weight;

#Q37 Write an SQL query to show minimum Item_Weight by Outlet_Type.
select outlet_type ,min(item_weight) Min_weight
from sql_project sp 
group by Outlet_Type 
order by Min_weight;

#Q38 Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order.
select  outlet_establishment_year , avg(item_weight) as Avg_weight 
from sql_project sp 
group by Outlet_Establishment_Year 
order by Avg_weight desc;

#Q39 Write an SQL query to show maximum Item_Outlet_Sales by Item_Type.
select item_type , max(item_outlet_sales) as Max_outlet_sales
from sql_project sp 
group by Item_Type 
order by Max_outlet_sales ;

#Q40 Write an SQL query to show minimum Item_Outlet_Sales by Item_Type.
select item_type , min(item_outlet_sales) as Min_outlet_sales
from sql_project sp 
group by Item_Type 
order by Min_outlet_sales ;

#Q41 Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year.
select Outlet_Establishment_Year  , min(item_outlet_sales) as Min_outlet_sales
from sql_project sp 
group by Outlet_Establishment_Year  
order by Min_outlet_sales ;

#Q42 Write an SQL query to show maximum Item_Outlet_Sales by
Outlet_Establishment_Year and order it by descending order.
select item_type , max(item_outlet_sales) as Max_outlet_sales
from sql_project sp 
group by Item_Type 
order by Max_outlet_sales desc;

#Q43 Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order.
select outlet_size , avg(item_outlet_sales) as Avg_outlet_sales
from sql_project sp 
group by Outlet_Size 
order by Avg_outlet_sales desc;

#Q44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type.
select Outlet_Type , avg(item_outlet_sales) as Avg_outlet_sales
from sql_project sp 
group by Outlet_Type  
order by Avg_outlet_sales;

#Q45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type.
select outlet_type , max(item_outlet_sales) as Max_outlet_sales
from sql_project sp 
group by Outlet_Type
order by Max_outlet_sales ;

#Q46 Write an SQL query to show total Item_Outlet_Sales by Item_Type.
select item_type ,sum(item_outlet_sales) Sum_outlet_sales
from sql_project sp 
group by Item_Type 
order by Sum_outlet_sales ;

#Q47 Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content.
select Item_Fat_Content  , sum(ITEM_OUTLET_SALES) Total_outletsales
from sql_project sp 
group by Item_Fat_Content  
order by total_outletsales ;

#Q48 Write an SQL query to show maximum Item_Visibility by Item_Type.
select item_type , max(item_visibility) Max_visibility
from sql_project sp 
group by Item_Type 
order  by Max_visibility ;

#Q49 Write an SQL query to show Minimum Item_Visibility by Item_Type. 
select item_type , min(item_visibility) Min_visibility
from sql_project sp 
group by Item_Type 
order  by Min_visibility ;

#Q50 Write an SQL query to show total Item_Outlet_Sales by Item_Type 
but only WHERE Outlet_Location_Type is Tier 1.
select item_type ,sum(item_outlet_sales) as Total_outlet_sales ,Outlet_Location_Type 
from sql_project sp where Outlet_Location_Type =('tier 1')
group by Item_Type 
order by Total_outlet_sales ;

#Q51 Write an SQL query to show total Item_Outlet_Sales by Item_Type 
WHERE Item_Fat_Content is ONLY Low Fat & LF.
select item_type , sum(item_outlet_sales)as Total_outlet_sales 
from  sql_project sp 
where Item_Fat_Content in('Low Fat','LF')
group by Item_Type 
order by total_outlet_sales ;

