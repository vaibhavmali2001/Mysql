drop function if exists sumsal;
delimiter $
create function sumsal (_deptno int) returns int
begin 
declare x int default 0;
select sum(sal) into x from emp where deptno=_deptno;
return x;
end $ 
delimiter ;
