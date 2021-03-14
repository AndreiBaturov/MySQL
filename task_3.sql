alter table vk_new.profiles
add is_active bit not null default 1;

update vk_new.profiles
set is_active = 0
where timestampdiff(year, birthday, CURDATE()) < 18;

--script to check
SELECT *,timestampdiff(year, birthday, CURDATE()) as age FROM vk_new.profiles
where timestampdiff(year, birthday, CURDATE()) < 18;