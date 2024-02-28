
create view june_vacancies as
select listings.id, property_type, host_name, count(availabilities.date) as "days_vacant"  from listings
join availabilities on availabilities.listing_id = listings.id
where date like '%2023-06-%' and available like 'TRUE'
group by listings.id;
