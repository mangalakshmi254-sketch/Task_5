------------INNER JOIN------OUTER JOIN(LEFT JOIN,RIGHT JON,FULL OUTER JOIN)---SELF JOIN-
create table USER_TA (u_id int, u_name varchar(50), u_address varchar(50))
insert into USER_TA values (101,'Mangalakshmi','Tirupattur'),(201,'Keeru','vellore'),(301,'Fouziya','gorage'),(401,'Durga','chennai'),
(501,'rio','tirupathi'),(601,'venkat','Mookanur')
select * from user_TA
create table Game_T (g_id int, g_name varchar(50), g_address varchar(50),game_type varchar(40))
insert into Game_T values (101,'2GO','Tirupattur','Sports'),(201,'Thrill Chill','vellore','Action'),(301,'Goast3B','gorage','Action'),
(401,'HighVI','chennai','Sports'),
(501,'Gamechallanege','tirupathi','Action'),(701,'Luddo','Mookanur','puzzel')
select * from Game_T
--------------------------------------INNER JOIN------------------------------------------------------------------
select U.u_id, U.u_name , U.u_address ,G.g_name, G.game_type from user_ta as U inner join game_t as g on u_id=g_id
---------------------------------------LEFT JOIN------------------------------------------------------------------
select U.u_id, U.u_name , U.u_address ,G.g_name, G.game_type from user_ta as U left join game_t as g on u_id=g_id
-----------------------------------------RIGHT JOIN----------------------------------------------------------------
select U.u_id, U.u_name , U.u_address ,G.g_name, G.game_type from user_ta as U right join game_t as g on u_id=g_id
----------------------------------------FULL OUTER JOIN------------------------------------------------------------
select U.u_id, U.u_name , U.u_address ,G.g_name, G.game_type from user_ta as U full outer join game_t as g on u_id=g_id
----------------------------------------SELF JOIN---------------------------------------------------------------------


create table Em_E(Employee_id int,emp_name varchar(80), Emp_role varchar(40),Manager_id int)
insert into Em_E values(1,'Shalaini','inspection', 5),(2,'Narmadha','Team leader',4),
 (3,'Karthika','Auditing',4),(4,'MUgil','inspection', 5),(5,'Sudha','Team leader',null)
 select * from Em_E
 -------------------Manager and Employee Relationship table using elf join-----------
 select e.Employee_id , e.Emp_name, e.Manager_id  Manager_id ,M.emp_name as Manager 
 from 
 Em_E as E join Em_E as M  
 on M.Employee_id=E.Manager_id




