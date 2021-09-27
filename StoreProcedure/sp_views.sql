/* Creating stored procedure with parameters for candidates count in view candidates */
DELIMITER $$
CREATE PROCEDURE candidates_count(
IN name VARCHAR(20),
OUT total int)
BEGIN
SELECT COUNT(id)
into total
FROM candidates
WHERE degree = name;
END $$

DELIMITER ;

/* procedure calls give count*/
call candidates_count('M.tech',@total);

select@total;


/*  create view inside procedure*/

DELIMITER $$
create procedure callView()
Begin
declare exit handler for sqlexception
begin
rollback;
end;
    
declare exit handler for sqlwarning
begin
rollback;
end;
    
start transaction;
select * from CityName;
select * from PreviousDetail;
select * from candidates;
commit;
end$$

/* calling View by using procedure*/

call callView()$$


