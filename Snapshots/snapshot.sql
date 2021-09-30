/* Open command prompt */

Microsoft Windows [Version 10.0.19043.1237]
(c) Microsoft Corporation. All rights reserved.

/* Give the path of MYSQL which installed in machine */

C:\Users\saura>cd C:\Program Files\MySQL\MySQL Server 8.0\bin



/* Snapshot ALL database,give path of Backupfolder with file with .db extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --all-databases --master-data >C:\Users\saura\MYSQLbackup\alldbdump.db
Enter password: **********




/* Snapshot demo database,give path of Backupfolder with file with .db extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo --master-data >C:\Users\saura\MYSQLbackup\demo.db
Enter password: **********



/* Snapshot demo database,give path of Backupfolder with file with .sql extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo --master-data >C:\Users\saura\MYSQLbackup\demo2.sql
Enter password: **********



/* Snapshot demo database,give path of Backupfolder with file with .sql extension(excluded --master-data) */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo >C:\Users\saura\MYSQLbackup\demo3.sql
Enter password: **********



/* Snapshot demo database,give path of Backupfolder with file with .txt extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo --master-data >C:\Users\saura\MYSQLbackup\demo3.txt
Enter password: **********



/* Snapshot demo database,give path of Backupfolder with file with .txt extension(excluded --master-data) */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo >C:\Users\saura\MYSQLbackup\demo4.txt
Enter password: **********



/* Snapshot cpulogdata database,give path of Backupfolder with file with .db extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases cpulogdata --master-data >C:\Users\saura\MYSQLbackup\cpulogdata.db
Enter password: **********



/* Snapshot lms database,give path of Backupfolder with file with .db extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases lms --master-data >C:\Users\saura\MYSQLbackup\lms.db
Enter password: **********



/* Snapshot demo1 database,give path of Backupfolder with file with .db extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo1 --master-data >C:\Users\saura\MYSQLbackup\newdemo1.db
Enter password: **********



/* Snapshot demo1 database,excluding/ignore  test_part table ,give path of Backupfolder with file with .db extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo1 --ignore-table=demo1.test_part --master-data >C:\Users\saura\MYSQLbackup\newdemo2.db
Enter password: **********



/* Snapshot demo1 database,excluding/ignore  test_part and person table ,give path of Backupfolder with file with .db extension */

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p --databases demo1 --ignore-table=demo1.test_part --ignore-table=demo1.person --master-data >C:\Users\saura\MYSQLbackup\newdemo3.db
Enter password: **********


C:\Program Files\MySQL\MySQL Server 8.0\bin>
