/* Create trigger event insert and timing after */
 DELIMITER $$
 create trigger triggerAfterInsert
    after insert
    on mentor
    for each row
    begin
    insert into mentor values(new.id,new.name ,new.mentor_type ,new.lab_id,new.status, new.creator_stamp , new.creator_user ,curtime());
	end$$
    
    
 /* Create trigger event insert and timing after */   
DELIMITER $$
CREATE TRIGGER after_lab_insert
AFTER INSERT
ON lab FOR EACH ROW
BEGIN
    IF NEW.creator_user IS NULL THEN
        INSERT INTO lab_threshold(id,lab_id ,lab_capacity ,lead_threshold,ideation_engg_threshold,buddy_engg_threshold ,status ,creator_stamp,creator_user)
        VALUES(new.id,CONCAT('Hi ', NEW.location, 'missing'));
    END IF;
END$$
DELIMITER ;