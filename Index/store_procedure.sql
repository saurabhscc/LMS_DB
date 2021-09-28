/* creating index on 1 or more columns*/
 
create INDEX disk_count_bytes on logdata(
disk_read_count,
disk_write_count,
disk_read_bytes,
disk_write_bytes);



/* Creating stored procedure for non-clustered index*/
DELIMITER $$
create procedure sp_disk_count_bytes()
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
create index disk_count_bytes on logdata(
disk_read_count,
disk_write_count,
disk_read_bytes,
disk_write_bytes
);
commit;
end$$
     
DELIMITER ;

/* show index present in table*/
SHOW INDEXES FROM logdata;



