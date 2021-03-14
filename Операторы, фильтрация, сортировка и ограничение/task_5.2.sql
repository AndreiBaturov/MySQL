ALTER TABLE vk.users
MODIFY created_at DATETIME,
MODIFY updated_at DATETIME;

select * from vk.users;