drop procedure if exists addUser;
delimiter $
create procedure addUser(_username varchar(200),_password int,_emailid varchar (200)) 
begin
declare flag boolean default false;
select true into flag from login where _username=username;
if flag then
select "User already Present"; 
else
insert into login values(_username,_password,_emailid);
end if;
end $
delimiter ;




