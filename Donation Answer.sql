use donation_data;
SELECT 
    SUM(donation)
FROM
    donation_data;

SELECT 
    gender, SUM(donation) as Ts
FROM
    donation_data
    group by gender;

    
SELECT 
    COUNT(gender) AS male, SUM(donation)
FROM
    donation_data
WHERE
    gender = 'Male';

SELECT 
    COUNT(gender) AS female, SUM(donation)
FROM
    donation_data
WHERE
    gender = 'Female';
   
   select 
   gender,count(gender), sum(donation)
   from donation_data
   group by gender;
   
   select 
   donation_frequency, sum(donation) as total_d
   from donation_data ds
   join donor_data dd on ds.id=dd.id
   group by donation_frequency
   order by totald desc ;
   
   
SELECT 
    job_field, count(donation),SUM(donation)
FROM
    donation_data
GROUP BY job_field 
order by count(donation);

SELECT 
    SUM(donation), COUNT(donation)
FROM
    donation_data
WHERE
    donation > 200; 

SELECT 
    SUM(donation), COUNT(donation)
FROM
    donation_data
WHERE
    donation < 200;

SELECT 
    state, SUM(donation) as donationn
FROM
    donation_data
GROUP BY state
ORDER BY donationn desc
LIMIT 10;

SELECT 
    state, SUM(donation) as donationn
FROM
    donation_data
GROUP BY state
ORDER BY donationn asc
LIMIT 10;

select car, sum(donation)
from donation_data ds
join donor_data dd on ds.id=dd.id
group by car
order by sum(donation) desc
limit 5;