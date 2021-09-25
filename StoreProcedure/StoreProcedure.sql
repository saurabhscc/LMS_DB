/* Creating stored procedure with parameter for retrive data by name*/

DELIMITER //

CREATE PROCEDURE GetfellowshipCandidateByFirstName(
	IN name VARCHAR(100)
 )
BEGIN
	SELECT * 
 	FROM fellowship_candidates
	WHERE first_name = name;
END //

DELIMITER ;

/* procedure calls*/
call GetfellowshipCandidateByFirstName('amit');


/* Creating stored procedure with parameter for candidates by count*/
 DELIMITER $$
CREATE PROCEDURE GetfellowshipCandidateCount(
IN name VARCHAR(20),
OUT total int)
BEGIN
SELECT COUNT(id)
into total
FROM fellowship_candidates
WHERE hired_lab = name;
END $$

DELIMITER ;



/* procedure calls*/
call GetfellowshipCandidateCount('Banglore',@total);


/* Creating stored procedure with INOUT parameter to set count*/
 DELIMITER $$
CREATE PROCEDURE SetCounter(
INOUT counter INT,
IN inc INT)
BEGIN
SET counter = counter + inc;
END$$
 DELIMITER ;

 SET @counter = 1;

/* procedure calls*/
CALL SetCounter(@counter,1); -- 2
CALL SetCounter(@counter,1); -- 3
CALL SetCounter(@counter,5); -- 8


/* Creating stored procedure to get Candidate by hired lab*/
DELIMITER //

CREATE PROCEDURE UpdatefellowshipCandidateByhiredlab(
	IN name VARCHAR(20)
 )
BEGIN
	SELECT * 
 	FROM fellowship_candidates
	WHERE hired_lab = name;
END //

DELIMITER ;

/* procedure calls*/
call UpdatefellowshipCandidateByhiredlab('banglore');



/*transaction*/
/* Creating stored procedure for Insert data*/
     create procedure sp_InsertData()
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
     insert into fellowship_candidates values(5, 'Neel', 'Nitin', 'Mukesh', 'neel111@gmail.com ', 7078722200, 'Hydrabad','2018-03-02','B.E', 60.60,2245,2223,'Banglore', 'Good', 'Good' , 'Good', '1993-05-05', 1, 'Nitin', 'Engineer', 6732452122, 770000, 'Sangli',               'Sangli','photo_path','2021-03-01', 'Good', 1, 1, 1, 'Correct', 'Good', null, 5);
     insert into  hired_candidates values(5, 'Neel', 'Nitin', 'Mukesh', 'neel111@gmail.com ', 7078722200, 'Hydrabad','2018-03-02','B.E', 60.60,2245,2223,'Banglore', 'Good', 'Good' , 'Good',null,5);
     insert into candidates_personal_det_check values(4,1,1,1,'2020-01-11',1,null,4);
     insert into candidate_bank_det values(4,1,'idbi',55667,1,'icici556',1,'MNQ556',1,3411003377,1,null,4);
     commit;
     end**
	 
     /* procedure calls*/

	call sp_InsertData()**


/* Creating stored procedure for Delete data*/

     create procedure sp_DeleteData()
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
     Delete from fellowship_candidates where id=5 and email='neel111@gmail.com';
     select * from fellowship_candidates 
     commit;
     end**
	 	
		
/* procedure calls*/
	 call sp_DeleteData()**







    