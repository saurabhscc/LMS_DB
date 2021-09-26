/*Create trigger  before delete event */

DELIMITER //
CREATE TRIGGER before_del_mentor
BEFORE DELETE
ON mentor
FOR EACH ROW
IF OLD.lab_id in (select lab_id from mentor) THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'The mentor has a related record.';
END IF//
DELIMITER ;


/*use insert query into table*/
insert mentor values(6,'Nitesh','Assistant','104',1,null,6)

/*using where clause try to del */
Delete from mentor where lab_id='104';

/*using select statement  */
 select * from mentor;