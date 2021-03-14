select count(id) num_of_likes from vk.likes
where user_id in (select user_id
from vk.profiles
where timestampdiff(year, birthday, now()) < 10);
