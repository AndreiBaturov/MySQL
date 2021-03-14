select distinct name 
from shop.users u
where u.id in (select distinct user_id from shop.orders);