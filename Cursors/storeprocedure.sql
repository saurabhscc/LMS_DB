/*create cursor in store procedure*/
DELIMITER $$
CREATE PROCEDURE sp_candidate_bank_detail (
INOUT bank_detailList varchar(4000)
)
 BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE account_number varchar(100) DEFAULT "";

/* -- declare cursor for candidate_bank_det ifsc*/
DEClARE currifsccode
CURSOR FOR

SELECT ifsc_code FROM  lms.candidate_bank_det;

/*-- declare NOT FOUND handler*/
DECLARE CONTINUE HANDLER
FOR NOT FOUND SET finished = 1;

OPEN currifsccode;

getcandidate_bank_det: LOOP
FETCH currifsccode INTO account_number;
IF finished = 1 THEN
LEAVE getcandidate_bank_det;
/* -- build bank_detailList*/
SET bank_detailList = CONCAT(account_number,";",bank_detailList);
END LOOP getcandidate_bank_det;
CLOSE currifsccode;
END$$

DELIMITER ;

/*call sp for cursor*/
SET @bank_detailList = "";   
CALL sp_candidate_bank_detail (@bank_detailList);
SELECT @bank_detailList;

/*ouput */
+--------------------------+
| @bank_detailList         |
+--------------------------+
| hdfc121;icici232;sbi123; |
+--------------------------+
