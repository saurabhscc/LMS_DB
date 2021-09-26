/* create trigger for timing before update event */
 DELIMITER $$
     create trigger beforeupdate
     before update
     on user_details
     for each row
     begin
     declare error_message varchar(255);
     set error_message=('password cant be empty ');
     if new.password='null' then signal sqlstate '45000'
     set message_text=error_message;
     end if;
     end$$
DELIMITER $$  

/*call trigger*/
UPDATE user_details SET password = 'amit@11' WHERE id = 2; 
/* call trigger*/
UPDATE user_details SET password = 'null' WHERE id = 2; 
