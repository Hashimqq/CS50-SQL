
-- *** The Lost Letter ***


select * from scans where "package_id" = (
  select "id" from packages where "from_address_id" =
    (select "id" from addresses where "address" like '900 Somerville Avenue')
  and "to_address_id" =
    (select "id" from addresses where "address" like '2 Fin%')
);


-- *** The Devious Delivery ***


select * from scans where "package_id" = (select "id" from packages where "from_address_id" is null);
select "address_id" from scans where "package_id" = (select "id" from packages where "from_address_id" is null) and "action" like 'Drop';
select * from addresses where "id" = (select "address_id" from scans where "package_id" = (select "id" from packages where "from_address_id" is null) and "action" like 'Drop');




-- *** The Forgotten Gift ***

select * from addresses where "address" like '109 Tileston Street' ;
select * from packages where "from_address_id" = (select "id" from addresses where "address" like '109 Tileston Street');
select "driver_id" from scans where "package_id" = '9523' order by "id" desc limit 1 ;
select * from drivers where "id" = (select "driver_id" from scans where "package_id" like '9523' order by "id" desc limit 1 );


