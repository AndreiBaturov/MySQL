select concat_ws(" ", firstname, lastname) as user_who_sent_lots_of_msgs from users 
where id = (select from_user_id from (
select from_user_id, count(to_user_id) as number_of_messages
from vk.messages
where to_user_id = 1
group by from_user_id ) as sub
where sub.number_of_messages = (
select max(number_of_messages) 
from (select from_user_id, count(to_user_id) as number_of_messages
from vk.messages
where to_user_id = 1
group by from_user_id ) sub2));