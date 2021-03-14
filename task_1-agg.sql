select avg(timestampdiff(year, p.birthday, curdate())) as average_age
from vk_new.profiles p;