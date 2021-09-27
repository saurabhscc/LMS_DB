/* create function  inside procedure*/

DELIMITER $$
create procedure Function_candidatefund()
begin
declare exit handler for sqlexception
begin
rollback;
end;

declare exit handler for sqlwarning
begin
rollback;
end;

start transaction;
SELECT first_name, last_name, parent_occupation, candidatefund(parent_occupation)  
FROM fellowship_candidates ORDER BY parent_occupation; 
commit;
end$$

/* call function by using procedure*/
call Function_candidatefund()$$
