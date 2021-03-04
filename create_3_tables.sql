USE vk;

DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
       id SERIAL,
       `media_id` BIGINT unsigned NOT NULL,
    PRIMARY KEY (media_id),   
    FOREIGN KEY (media_id) REFERENCES media(id)
);
       

DROP TABLE IF EXISTS `clips`;
CREATE TABLE `clips` (
       id SERIAL,
       `media_id` BIGINT unsigned NOT NULL,
    PRIMARY KEY (media_id),   
    FOREIGN KEY (media_id) REFERENCES media(id)
);


DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
       id SERIAL,
       `media_id` BIGINT unsigned NOT NULL,
    PRIMARY KEY (media_id),  
    FOREIGN KEY (media_id) REFERENCES media(id)
);