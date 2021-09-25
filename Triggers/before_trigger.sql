use lms
/* Create trigger before */
delimiter //
CREATE TRIGGER InsertTrigger    
BEFORE INSERT   
ON hired_candidates
FOR EACH ROW    
BEGIN 
if new.aggr_per>95.00 then set  new.aggr_per=90.00;
end if;   
END // 

insert into hired_candidates values(6, 'pramod', 'gokul', 'shetty', 'pshetty@gmail.com ', 9978722234, 'Baroda','2017-03-01','B.E', 96.85,4555,4563,'Delhi', 'Good', 'Good' , 'Good','Good', null, 6);

/*Select statement for table*/
select * from hired_candidates;


DELIMITER $$
create trigger salaryCheckbefore
    before insert
    on hired_candidates
    for each row
    begin
    if new.aggr_per > 90.00 then set  new.status= 'Very Good';
    end if;
    end$$
    
/*insert row */
insert into hired_candidates values(7, 'pritam', 'ramesh', 'kolhe', 'pritzz@gmail.com ', 9978782230, 'saurashtra','2017-03-01','B.E', 90.85,8555,8563,'Delhi', 'Good', 'Good' , 'Good','Good', null, 7);

/*select statment for table*/
select * from  hired_candidates




