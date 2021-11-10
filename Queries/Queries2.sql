/*group by clause */
SELECT fc.first_name, fc.last_name,us.password,us.contact_number
FROM fellowship_candidates fc
INNER JOIN user_details us ON fc.id = us.id
group by
first_name ;

/* get highest 3 percentage records from table*/
select distinct aggr_per from hired_candidates
a where 3 >= (select count(distinct aggr_per)
from hired_candidates
b where a.aggr_per <= b.aggr_per)
order by a.aggr_per desc;

/*Retrive 50 % of records*/
select id, h.* from hired_candidates h
where id<=(select count(*)/2 from hired_candidates);

