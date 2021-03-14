select p.name, c.name from shop.products p
join on shop.catalogs c on p.id = c.id;