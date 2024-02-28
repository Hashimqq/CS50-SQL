select city , avg(graduated) from schools
join graduation_rates on schools.id = graduation_rates.school_id
group by city;
