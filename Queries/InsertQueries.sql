/* loading/import csv file data into table */
LOAD DATA LOCAL INFILE 'Desktop\CpuLogData2019-11-17-new.csv' 
INTO TABLE temporary_MIS 
FIELDS TERMINATED BY ',' 	/* value separated by comma */
LINES TERMINATED BY '\n' 	/* \n new line */
IGNORE 1 ROWS 				/* ignore header row */
(Date_Time ,
Cpu_Count ,
Cpu_Working_Time ,
Cpu_idle_Time ,
cpu_percent ,
Usage_cpu_count ,
number_of_software_interrupts_since_boot ,
number_of_system_calls_since_boot ,
number_of_interrupts_since_boot ,
cpu_avg_load_over_1_min,
cpu_avg_load_over_5_min  ,
cpu_avg_load_over_15_min ,
system_total_memory  ,
system_used_memory ,
system_free_memory ,
system_active_memory ,
system_inactive_memory ,
system_buffers_memory,
system_cached_memory ,
system_shared_memory ,
system_avalible_memory ,
disk_total_memory ,
disk_used_memory ,
disk_free_memory ,
disk_read_count ,
disk_write_count ,
disk_read_bytes ,
disk_write_bytes ,
time_spent_reading_from_disk ,
time_spent_writing_to_disk ,
time_spent_doing_actual_Input_Output ,
number_of_bytes_sent ,
number_of_bytes_received ,
number_of_packets_sent ,
number_of_packets_recived ,
total_number_of_errors_while_receiving ,
total_number_of_errors_while_sending ,
total_number_of_incoming_packets_which_were_dropped ,
total_number_of_outgoing_packets_which_were_dropped ,
boot_time,
user_name ,
keyboard ,
mouse ,
technology ,
files_changed
);

/* insert data for fellowship_candidates table */

insert into fellowship_candidates values(1, 'deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ', 8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Mumbai', 'Good', 'Good' , 'Good', '1999-12-13', 1, 'Kiran', 'Farmer', 7584962547, 300000, 'Pune', 'Pune' , 'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct', 'Good', null, 1);
insert into fellowship_candidates values(2, 'amit', 'sanjay', 'deshmukh', 'amit.101@gmail.com ', 8956722222, 'Mumbai','2020-01-01','B.E', 70.05,5250,5483,'Banglore', 'Good', 'Good' , 'Good', '1996-02-13', 1, 'sanjay', 'Farmer', 7756722200, 250000, 'Thane', 'Thane','photo_path','2020-01-01', 'Good', 1, 1, 1, 'Correct', 'Good', null, 2);
insert into fellowship_candidates values(3, 'Akshay', 'Anil', 'Pandit', 'akshay.10@gmail.com ', 7878722234, 'Hydrabad','2021-03-01','Diploma', 80.40,4545,4523,'Banglore', 'Good', 'Good' , 'Good', '1993-12-12', 1, 'Anil', 'Engineer', 7732452112, 980000, 'Nagpur', 'Nagpur','photo_path','2021-03-01', 'Good', 1, 1, 1, 'Correct', 'Good', null, 3);
insert into fellowship_candidates values(4, 'Sumit', 'Arvind', 'Jadhav', 'sumit40@gmail.com ', 7676543234, 'Hydrabad','2021-03-03','B.E', 88.88,6745,6723,'Banglore', 'Good', 'Good' , 'Good', '1996-12-12', 1, 'Arvind', 'Doctor', 7745211288, 990000, 'Kolhapur', 'Kolhapur','photo_path','2021-02-01', 'Good', 1, 1, 1, 'Correct', 'Good', null, 4);

/* Display data of fellowship_candidates table */
select * from fellowship_candidate;


/* insert data for hired_candidates table */
insert into hired_candidates values(1, 'deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ', 8956748596, 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Mumbai', 'Good', 'Good','Good','Good', null, 1);
insert into hired_candidates values(2, 'amit', 'sanjay', 'deshmukh', 'amit.101@gmail.com ', 8956722222, 'Mumbai','2020-01-01','B.E', 70.05,5250,5483,'Banglore', 'Good', 'Good' , 'Good','Good', null, 2);
insert into hired_candidates values(3, 'Akshay', 'Anil', 'Pandit', 'akshay.10@gmail.com ', 7878722234, 'Hydrabad','2021-03-01','Diploma', 80.40,4545,4523,'Banglore', 'Good', 'Good' , 'Good','Good', null, 3);

/* Display data of hired_candidates table */
select * from hired_candidates;


/* insert data for candidates_personal_det_check table */
insert into candidates_personal_det_check values(1,1,1,1,'2020-01-11',1,null,1);
insert into candidates_personal_det_check values(2,1,1,1,'2020-01-11',1,null,2);
insert into candidates_personal_det_check values(3,1,1,1,'2020-01-11',1,null,3);

/* Display data ofcandidates_personal_det_check table */
select * from candidates_personal_det_check;


/* insert data for candidate_bank_det table */
insert into candidate_bank_det values(1,1,'sbi',12345,1,'sbi123',1,'ABC123',1,1231231231,1,null,1);
insert into candidate_bank_det values(3,1,'icici',23232,1,'icici232',1,'PQR232',1,1200031231,1,null,3);
insert into candidate_bank_det values(2,1,'hdfc',12121,1,'hdfc121',1,'BCD121',1,1200231001,1,null,2);

/* Display data of candidate_bank_det table */
select * from candidate_bank_det 

/* insert data for candidate_qualification table */
insert into candidate_qualification values(1,1,1,'B.E',1,'computer',1,2015,1,75.25,75.25,1,'newera',1,12,1,null,1,null,1);
insert into candidate_qualification values(2,1,1,'B.E',1,'computer',1,2015,1,70.05,70.05,1,'techtak',1,12,1,null,1,null,2);
insert into candidate_qualification values(3,1,1,'diploma',1,'computer',1,2015,1,80.40,80.40,1,'seedu',1,12,1,null,1,null,3);

/* Display data of candidate_qualification table */
select * from candidate_qualification;


/* insert data for candidates_education_det_check table */
insert into candidates_education_det_check values(1,1,1,1,null,1,null,1);
insert into candidates_education_det_check values(2,1,1,1,null,1,null,2);
 insert into candidates_education_det_check values(3,1,1,1,null,1,null,3);

/* Display data of candidates_education_det_check table */
select * from candidates_education_det_check; 


/* insert data for candidate_docs table */
insert into candidate_docs values(1,1,null,'docpath',1,null,1);
insert into candidate_docs values(2,1,null,'docpath',1,null,2);
insert into candidate_docs values(3,1,null,'docpath',1,null,3);

/* Display data of candidate_docs table */
select * from candidate_docs;


/* insert data for user_details table */
insert user_details values(1,'deepak.63584@gmail.com','deepak','patil','deepak@1',8956748596,1);
insert user_details values(3,'akshay.10@gmail.com','Akshay','Pandit','akshay@1',7878722234,1);
insert user_details values(2,'amit.101@gmail.com ','amit','deshmukh','amit@1',8956722222,1);

/* Display data of user_details table */
select * from user_details; 


/* insert data for user_roles table */
insert user_roles values(1,'Engineer');
insert user_roles values(2,'Developer');
insert user_roles values(3,'Tester');

/* Display data of user_roles table */
select * from user_roles;


/* insert data for company table */
insert company values(1,1,'Pune','Maharashtra',1,null,1);
insert company values(2,1,'Mumbai','Maharashtra',1,null,2);
insert company values(3,1,'Banglore','KA',1,null,3);

/* Display data of company table */
select * from company ; 


/* insert data for tech_stack table */
insert tech_stack values(1,'datascience','imagepath','dotnet',1,null,1);
insert tech_stack values(2,'datascience','imagepath','dotnet',1,null,2);
 insert tech_stack values(3,'datascience','imagepath','dotnet',1,null,3);

/* Display data of tech_stack table */
select * from tech_stack ;


/* insert data for tech_type table */
insert tech_type values(1,'datascience',null,null,1);
insert tech_type values(2,'datascience',null,null,2);
insert tech_type values(3,'datascience',null,null,3);

/* Display data of tech_type table */
select * from tech_type ;


/* insert data for lab table */
insert lab values(1,'Bridgelabz','Mumbai','Govandi',1,null,1);
insert lab values(2,'Bridgelabz','Banglore','JMnagar',1,null,2);
insert lab values(3,'Bridgelabz','Banglore','JMnagar',1,null,3);

/* Display data of lab table */
select * from lab ;


/* insert data for maker_program table */
insert maker_program values(1,1,'regular','program_link',1,1,1,null,1,null,1);
insert maker_program values(2,1,'regular','program_link',2,2,1,null,1,null,2);
insert maker_program values(3,1,'regular','program_link',3,3,1,null,1,null,3);

/* Display data of maker_program table */
select * from maker_program ;


/* insert data for mentor table */
insert mentor values(1,'Manoj','Head','101',1,null,1);
insert mentor values(2,'Suraj','Head','102',1,null,2);
insert mentor values(3,'Nishant','Head','103',1,null,3);

/* Display data of mentor table */
select * from mentor;


/* insert data for app_parameters table */
insert app_parameters values (1,'New','first','All','Y',1,null,null,1,1001);
insert app_parameters values (2,'New','first','All','Y',1,null,null,1,1002);
insert app_parameters values (3,'New','first','All','Y',1,null,null,1,1003);

/* Display data of app_parameters;table */
select * from app_parameters;


/* insert data for mentor_ideation_map table */
insert mentor_ideation_map values (1,1,1,null,null);
insert mentor_ideation_map values (2,2,1,null,null);
insert mentor_ideation_map values (3,3,1,null,null);

/* Display data of mentor_ideation_map table */
select * from mentor_ideation_map; 


/* insert data for mentor_techstack table */
insert mentor_techstack values(1,1,1,1,null,null);
insert mentor_techstack values(2,2,2,1,null,null);
insert mentor_techstack values(3,3,3,1,null,null);

/* Display data of mentor_techstack table */
select * from mentor_techstack;;


/* insert data for lab_threshold table */
insert lab_threshold values (1,1,'fifty',1,1,1,1,null,null);
insert lab_threshold values (2,2,'fifty',1,1,1,1,null,null);
insert lab_threshold values (3,3,'fifty',1,1,1,1,null,null);

/* Display data of lab_threshold table */
select * from lab_threshold ;


/* insert data for company_requirement table */
insert company_requirement values (1,1,1,'twelve','Gurgaon',1,'doc_path',10,1,1,1,1,1,1,'good',1,null,1);
insert company_requirement values (2,2,2,'twelve','Gurgaon',1,'doc_path',10,2,2,2,2,2,2,'good',1,null,2);
insert company_requirement values (3,3,3,'twelve','Gurgaon',1,'doc_path',10,3,3,3,3,3,3,'good',1,null,3);

/* Display data of company_requirement table */
select * from company_requirement ;


/* insert data for candidate_techstack_assignment table */
insert candidate_techstack_assignment values(1,1,1,null,'ontime',null,1);
insert candidate_techstack_assignment values(2,2,2,null,'ontime',null,1);
insert candidate_techstack_assignment values(3,3,3,null,'ontime',null,1);

/* Display data of candidate_techstack_assignment table */
select * from candidate_techstack_assignment ;
