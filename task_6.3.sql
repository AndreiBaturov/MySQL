select case 
when sub.number_of_likes_set_by_women > sub.number_of_likes_set_by_men then 'Women'
when sub.number_of_likes_set_by_women < sub.number_of_likes_set_by_men then 'Men'
else 'Equal' end as Who_set_more_likes
from ( 
select (select count(id) from vk.likes where user_id in (
select user_id from vk.profiles where gender = 'f')) number_of_likes_set_by_women,
(select count(id) from vk.likes where user_id in (
select user_id from vk.profiles where gender = 'm')) number_of_likes_set_by_men) sub;
