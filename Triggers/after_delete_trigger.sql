/*create table*/
CREATE TABLE company_former_employee(
id int(11) NOT NULL,
name int(11) NOT NULL,
address varchar(150)  NOT NULL,
location varchar(50)  NOT NULL,
deleted_date datetime DEFAULT NULL
);

/*use select statement to display table*/
select * from company_former_employee

/* create trigger after delete */

DELIMITER //
CREATE TRIGGER after_delete_company
AFTER DELETE
ON company 
FOR EACH ROW
BEGIN

INSERT INTO company_former_employee(
id,
name,
address,
location,
deleted_date)
VALUES
(OLD.id,
OLD.name,
OLD.address,
OLD.location,
CURDATE());
END; //

DELIMITER ;

/* execute */
delete from company where id=5;

/*use select statement to display table again after execution*/
select * from company_former_employee;