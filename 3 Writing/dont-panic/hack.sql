update users
set password = '982c0381c279d139fd221fce974916e7'
where username = 'admin';

delete from user_logs where old_username = 'admin';


insert into user_logs (type, old_username, new_username, old_password, new_password)
select 'update', 'admin', 'admin', null, (
  select password
  from users
  where username = 'emily33'
  );


