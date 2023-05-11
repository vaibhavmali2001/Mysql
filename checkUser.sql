drop procedure if exists checkUser;
delimiter $
create procedure checkUser(_emailid varchar (200)) 
begin
declare flag boolean default false; 
select true into flag from login where _emailid=email;
if flag then
select username,password from login where _emailid=email;
else
insert into log(curr_date,curr_time,message)values(curdate(),curtime(),'Hello'); 
end if; 
end $
delimiter ;

