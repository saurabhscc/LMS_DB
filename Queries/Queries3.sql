/*queries */
SELECT COUNT(cpu_percent),files_changed
FROM logdata
GROUP BY DateTime
HAVING COUNT(cpu_percent) > 10;

--
SELECT DateTime,COUNT(cpu_percent),files_changed,user_name
FROM logdata
GROUP BY DateTime
HAVING COUNT(cpu_percent) >= 10;

--
SELECT DateTime,COUNT(cpu_percent),files_changed,user_name,boot_time
FROM logdata where boot_time > "1day" 
GROUP BY DateTime  
HAVING COUNT(cpu_percent) > 15;

--
SELECT COUNT(files_changed)
FROM
(
SELECT files_changed
 FROM logdata
 GROUP BY files_changed
 HAVING COUNT(DISTINCT technology) 
) logdata;

--
SELECT MAX(cpu_percent),files_changed
FROM logdata
GROUP BY DateTime
HAVING COUNT(cpu_percent) > 10;
--
SELECT * FROM logdata WHERE technology = 'java' AND (files_changed = 10 OR files_changed < 15);
--
SELECT DateTime, FROM logdata WHERE technology = 'java' AND (files_changed = 10 OR files_changed < 15);
--
SELECT DateTime,user_name FROM logdata 
WHERE technology = 'logdata.java' 
AND (files_changed = 10 OR files_changed < 15 and boot_time > '1day');
--
SELECT DateTime,user_name FROM logdata 
WHERE technology = 'logdata.mean' 
AND (files_changed = 10 OR files_changed < 15 and boot_time > '1day');

SELECT DateTime, user_name, technology
FROM logdata
ORDER BY
(CASE
    WHEN mouse IS NULL THEN keyboard
    ELSE mouse
END);

SELECT DateTime, user_name, technology
FROM logdata
ORDER BY
(CASE
    WHEN mouse = 0 THEN keyboard
    ELSE mouse
END);




