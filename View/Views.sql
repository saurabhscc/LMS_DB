/* create view/virtual  CityName table from fellowship_candidate table*/
select * from fellowship_candidates;
Create view CityName as
select hired_city,first_name,last_name
from lms.fellowship_candidates
where hired_city = 'Mumbai' ;

/* alter view add column in  table*/
alter view CityName as
select id ,hired_city,first_name,last_name
from lms.fellowship_candidates
where hired_city = 'Mumbai' ;

/*dispaly view*/
select * from cityname;

/*Create view from  fellowship_candidates,mentor,lab,user_roles tables*/
Create view ByCityMentorName as
select a. hired_city, b. degree, c. name, d. location, e. role_name
from lms.fellowship_candidates a, lms.fellowship_candidates b, lms.mentor c, lms.lab d, lms.user_roles e
where a.hired_city='Mumbai' or b.degree='B.E' or c.name ='Suraj' or d.location= 'Banglore' or e.role_name= 'Developer';

/*Dispaly view*/
select * from ByCityMentorName;

/*alter view ByCityMentorName, add column of mentorid*/
alter view ByCityMentorName as
select a. hired_city, b. degree, c. name, d. location, e. role_name, f. mentor_id
from lms.fellowship_candidates a, lms.fellowship_candidates b, lms.mentor c, lms.lab d, lms.user_roles e,mentor_techstack f
where a.hired_city='Mumbai' or b.degree='B.E' or c.name ='Suraj' or d.location= 'Banglore' or e.role_name= 'Developer' or f. mentor_id='1';

/*Dispaly view*/
select * from ByCityMentorName;

/*Create view from  user_roles,user_details,candidate_qualification,fellowship_candidates tables*/
Create view PreviousDetail as
select a.role_name,b.first_name ,c.training_institute ,d.  degree 
from lms.user_roles a,lms.user_details b,candidate_qualification c,lms.fellowship_candidates d
where a.role_name= 'Tester' and b.first_name= 'akshay' and c.training_institute ='techtak' and d.degree='B.E';

/*Dispaly view*/
select * from PreviousDetail;


/* creating view from fellowship_candidate table*/

    create view candidates
    as
    select id,first_name,last_name,degree
    from fellowship_candidates

/*Dispaly view*/
select * from candidates;

/* update records from view*/
    update candidates set first_name='Sumit' where id = 4

/* delete records from view*/
    delete from candidates where id =5
    
/* insert record into view*/
    insert into candidates values(5,'Pradeep','Kakade','M.tech')
   




