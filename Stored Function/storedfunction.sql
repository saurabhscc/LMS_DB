use lms;

/*Create stored function*/
DELIMITER $$  
CREATE FUNCTION candidatefund(  
 parent_occupation varchar(100)      
)   
RETURNS VARCHAR(100)  
DETERMINISTIC  
BEGIN  
    DECLARE candidatefund VARCHAR(100);  
    IF parent_occupation='Farmer' THEN  
        SET candidatefund= 'Poor';  
    ELSEIF parent_occupation='Doctor' THEN 
	SET candidatefund= 'Good';   
    ELSEIF  parent_occupation='Engineer' THEN  
        SET candidatefund= 'Better';  
        END IF;  
    -- return the candidatefund
    RETURN (candidatefund);  
END$$  
DELIMITER; 

/*Display the stored function in database */
SHOW FUNCTION STATUS WHERE db = 'lms';

/*calling Function using function name*/
SELECT first_name, last_name, parent_occupation, candidatefund(parent_occupation)  
FROM fellowship_candidates ORDER BY parent_occupation; 