DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,  -- Пользователь- автор поста
  community_id BIGINT UNSIGNED NOT NULL, -- В каком сообществе пост
  body TEXT,
  media_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP()
);


DROP TABLE IF EXISTS `playlists`;  --  плейлисты со списками аудиофайлов
CREATE TABLE `playlists` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
  	PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `audio_files`;  --  сами аудиофайлы
CREATE TABLE `audio_files` (
	id SERIAL,
	`playlist_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (playlist_id) REFERENCES playlists(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);