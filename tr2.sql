drop trigger if exists insertDuplicate;
delimiter $
create trigger insertDuplicate after insert on student for each row
begin
insert into duplicate1 values(new.id,new.namefirst,new.namelast,new.dob,new.emailid);
end $
delimiter ;