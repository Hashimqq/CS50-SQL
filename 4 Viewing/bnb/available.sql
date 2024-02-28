
create view available as
select listings.id, property_type, host_name, date from listings
join availabilities on availabilities.listing_id = listings.id
where available like 'TRUE';
