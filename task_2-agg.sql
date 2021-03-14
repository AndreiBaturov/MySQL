select DAYNAME(makedate(2021, DAYOFYEAR(p.birthday))), count(DAYNAME(makedate(2021, DAYOFYEAR(p.birthday))) 
from vk_new.profiles p
group by DAYNAME(makedate(2021, DAYOFYEAR(p.birthday)));