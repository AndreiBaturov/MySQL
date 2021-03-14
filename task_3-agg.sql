DROP TABLE IF EXISTS `temp`;
CREATE TEMPORARY TABLE `temp`
( value int not null );

insert into `temp` 
values (1), (2), (3), (4), (5);

select (select value from temp where value = 1) * (select value from temp where value = 2) * ((select value from temp where value = 3)*(select value from temp where value = 4) * (select value from temp where value = 5)