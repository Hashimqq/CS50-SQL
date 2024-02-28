SELECT city, COUNT(name)
FROM schools
where type = "Public School"
GROUP BY city
having COUNT(name) <= 3
order by COUNT(name) desc , city;
