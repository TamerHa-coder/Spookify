 DROP DATABASE IF EXISTS spookify;
CREATE DATABASE spookify;
USE spookify;

CREATE TABLE `artists`(
    `artist_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `cover_img` TEXT NOT NULL,
    `upload_at` DATETIME NOT NULL,
    PRIMARY KEY (artist_id)
);
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (1, 'veniam', 'http://lorempixel.com/640/480/', '2020-03-23 18:40:01');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (2, 'vero', 'http://lorempixel.com/640/480/', '1992-09-07 09:11:01');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (3, 'incidunt', 'http://lorempixel.com/640/480/', '1996-04-08 22:34:33');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (4, 'aliquam', 'http://lorempixel.com/640/480/', '1974-05-30 06:04:24');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (5, 'quaerat', 'http://lorempixel.com/640/480/', '1990-11-17 17:31:34');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (6, 'dolor', 'http://lorempixel.com/640/480/', '1985-08-09 01:46:02');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (7, 'voluptates', 'http://lorempixel.com/640/480/', '2013-04-05 02:24:02');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (8, 'omnis', 'http://lorempixel.com/640/480/', '1973-11-08 21:45:26');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (9, 'minus', 'http://lorempixel.com/640/480/', '2010-09-13 10:41:29');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (10, 'cumque', 'http://lorempixel.com/640/480/', '1972-06-09 19:54:20');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (11, 'optio', 'http://lorempixel.com/640/480/', '1994-06-09 11:27:12');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (12, 'architecto', 'http://lorempixel.com/640/480/', '2012-11-13 16:29:06');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (13, 'officiis', 'http://lorempixel.com/640/480/', '1991-05-26 15:28:42');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (14, 'reiciendis', 'http://lorempixel.com/640/480/', '1973-07-26 19:59:31');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (15, 'sit', 'http://lorempixel.com/640/480/', '2009-02-17 22:45:07');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (16, 'perferendis', 'http://lorempixel.com/640/480/', '2018-06-13 15:41:05');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (17, 'soluta', 'http://lorempixel.com/640/480/', '1971-01-18 05:58:28');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (18, 'sapiente', 'http://lorempixel.com/640/480/', '1995-08-22 21:26:56');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (19, 'itaque', 'http://lorempixel.com/640/480/', '1971-03-21 02:43:59');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (20, 'aut', 'http://lorempixel.com/640/480/', '1997-06-12 20:59:50');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (21, 'iste', 'http://lorempixel.com/640/480/', '1985-04-13 19:04:00');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (22, 'nostrum', 'http://lorempixel.com/640/480/', '2002-12-02 03:07:15');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (23, 'voluptatem', 'http://lorempixel.com/640/480/', '2019-11-09 00:53:24');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (24, 'deleniti', 'http://lorempixel.com/640/480/', '1997-09-06 16:30:45');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (25, 'debitis', 'http://lorempixel.com/640/480/', '1976-04-03 09:26:53');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (26, 'recusandae', 'http://lorempixel.com/640/480/', '1994-02-27 19:44:42');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (27, 'nisi', 'http://lorempixel.com/640/480/', '2016-04-06 06:25:46');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (28, 'sed', 'http://lorempixel.com/640/480/', '1987-06-15 11:44:50');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (29, 'earum', 'http://lorempixel.com/640/480/', '2001-03-18 04:26:50');
INSERT INTO `artists` (`artist_id`, `name`, `cover_img`, `upload_at`) VALUES (30, 'dolorem', 'http://lorempixel.com/640/480/', '1979-02-23 12:16:53');

CREATE TABLE `albums`(
    `album_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `artist_id` INT UNSIGNED NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `cover_img` TEXT NOT NULL,
    `created_at` DATE NOT NULL,
    `upload_at` DATETIME NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY(`artist_id`) REFERENCES `artists`(`artist_id`)
);
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (1, 1, 'ut', 'http://lorempixel.com/640/480/', '1994-03-14', '1976-06-02 01:24:25');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (2, 2, 'aperiam', 'http://lorempixel.com/640/480/', '1997-05-20', '2019-10-11 00:41:06');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (3, 3, 'itaque', 'http://lorempixel.com/640/480/', '1973-03-03', '2020-02-18 11:20:17');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (4, 4, 'sed', 'http://lorempixel.com/640/480/', '1977-05-02', '1978-09-06 13:52:16');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (5, 5, 'et', 'http://lorempixel.com/640/480/', '1996-08-28', '1994-11-29 06:43:07');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (6, 6, 'voluptatum', 'http://lorempixel.com/640/480/', '1995-07-12', '2001-06-07 17:54:27');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (7, 7, 'quis', 'http://lorempixel.com/640/480/', '1991-01-08', '2019-02-28 10:53:50');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (8, 8, 'natus', 'http://lorempixel.com/640/480/', '1972-10-20', '1982-06-22 18:11:25');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (9, 9, 'cum', 'http://lorempixel.com/640/480/', '1990-10-07', '2006-08-31 23:25:03');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (10, 10, 'maiores', 'http://lorempixel.com/640/480/', '1986-01-14', '1998-03-22 11:07:31');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (11, 11, 'similique', 'http://lorempixel.com/640/480/', '1971-12-20', '1978-02-16 09:36:09');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (12, 12, 'totam', 'http://lorempixel.com/640/480/', '2006-06-08', '1976-11-07 22:11:26');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (13, 13, 'non', 'http://lorempixel.com/640/480/', '2010-08-11', '2008-01-30 18:08:17');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (14, 14, 'qui', 'http://lorempixel.com/640/480/', '2000-08-12', '2005-03-08 01:08:14');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (15, 15, 'qui', 'http://lorempixel.com/640/480/', '2018-09-22', '1994-03-08 19:20:00');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (16, 16, 'sapiente', 'http://lorempixel.com/640/480/', '1997-06-28', '1990-08-20 17:25:05');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (17, 17, 'expedita', 'http://lorempixel.com/640/480/', '1974-12-08', '1977-01-15 09:58:42');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (18, 18, 'quasi', 'http://lorempixel.com/640/480/', '2016-08-11', '2020-02-29 18:04:20');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (19, 19, 'molestiae', 'http://lorempixel.com/640/480/', '1970-04-02', '1994-03-19 12:44:48');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (20, 20, 'debitis', 'http://lorempixel.com/640/480/', '1999-09-04', '1975-02-04 01:34:11');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (21, 21, 'incidunt', 'http://lorempixel.com/640/480/', '1977-05-06', '2007-04-01 09:00:14');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (22, 22, 'alias', 'http://lorempixel.com/640/480/', '1974-02-01', '2005-12-02 08:59:58');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (23, 23, 'perferendis', 'http://lorempixel.com/640/480/', '2014-04-22', '2008-09-05 04:15:42');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (24, 24, 'quo', 'http://lorempixel.com/640/480/', '2017-12-15', '2009-01-14 17:38:19');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (25, 25, 'laboriosam', 'http://lorempixel.com/640/480/', '2001-11-15', '2001-03-19 19:16:53');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (26, 26, 'nisi', 'http://lorempixel.com/640/480/', '2004-12-10', '1989-09-06 02:36:11');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (27, 27, 'nemo', 'http://lorempixel.com/640/480/', '2014-09-29', '2012-01-29 16:36:14');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (28, 28, 'reiciendis', 'http://lorempixel.com/640/480/', '1993-02-20', '1982-12-08 00:05:33');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (29, 29, 'ad', 'http://lorempixel.com/640/480/', '1992-02-03', '1986-04-19 00:15:33');
INSERT INTO `albums` (`album_id`, `artist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (30, 30, 'corrupti', 'http://lorempixel.com/640/480/', '1993-10-25', '2005-05-03 14:40:51');

CREATE TABLE `songs`(
    `song_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `song_name` VARCHAR(255) NOT NULL,
    `youtube_link` VARCHAR(255) NOT NULL,
    `album` INT UNSIGNED NOT NULL,
    `artist_id` INT UNSIGNED NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `length` TIME NOT NULL,
    `track_number` INT NOT NULL,
    `lyrics` TEXT NOT NULL,
    `created_at` DATE NOT NULL,
    `upload_at` DATETIME NOT NULL,
    PRIMARY KEY(song_id),
    FOREIGN KEY(`album`) REFERENCES `albums`(`album_id`),
    FOREIGN KEY(`artist_id`) REFERENCES `artists`(`artist_id`)
);
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (31, 'rerum', 'http://www.smithamharber.com/', 6, 1, 'Sit praesentium minus velit aliquid.', '20:22:57', 311525910, 'I\'ve fallen by this time.) \'You\'re nothing but the Dormouse turned out, and, by the officers of the bottle was NOT marked \'poison,\' so Alice ventured to taste it, and then the Rabbit\'s little white.', '1993-08-05', '1992-10-29 21:34:28');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (32, 'facere', 'http://monahan.com/', 9, 2, 'Nihil commodi harum qui illo culpa qui.', '07:22:03', 42, 'The first witness was the same year for such a pleasant temper, and thought it over afterwards, it occurred to her that she had never had to double themselves up and bawled out, \"He\'s murdering the.', '1970-12-05', '2003-02-14 23:33:35');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (33, 'beatae', 'http://www.hermiston.org/', 6, 3, 'Et voluptates eum et ut aut dolores.', '07:29:51', 0, 'March Hare was said to herself. \'Of the mushroom,\' said the King, rubbing his hands; \'so now let the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to leave off this.', '2006-11-25', '1994-08-21 09:02:01');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (34, 'ut', 'http://www.rempel.biz/', 7, 4, 'Fuga tenetur dolor ab libero consequatur voluptas.', '12:26:31', 17108, 'Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a long time with great curiosity, and this was the fan and gloves--that is, if I shall never get to the executioner:.', '1986-06-25', '1986-01-17 06:07:08');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (35, 'id', 'http://www.damoreritchie.com/', 4, 5, 'Veniam esse voluptatem ratione nesciunt laudantium ut.', '21:54:51', 634680, 'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked on in the distance. \'Come on!\' cried the Gryphon, and the great.', '1986-01-18', '1977-02-22 09:00:16');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (36, 'dolorem', 'http://www.nader.biz/', 5, 6, 'Quis et deleniti minima quae veritatis et et.', '16:06:22', 558, 'LITTLE BUSY BEE,\" but it was YOUR table,\' said Alice; not that she remained the same age as herself, to see it quite plainly through the door, staring stupidly up into a pig,\' Alice quietly said,.', '1982-10-17', '2010-05-26 05:57:18');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (37, 'expedita', 'http://koeppadams.com/', 5, 7, 'Et pariatur eum voluptatem sunt.', '15:26:51', 3, 'Ada,\' she said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as well wait, as she came upon a heap of sticks and dry leaves, and the other side of the sort..', '2004-01-12', '1995-11-07 08:03:29');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (38, 'voluptas', 'http://www.durgan.com/', 2, 8, 'Est vel ex minus architecto aspernatur aliquid ex ut.', '15:15:33', 3823, 'Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a natural way. \'I thought you did,\' said the Hatter. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just.', '2017-06-14', '2005-04-18 21:23:29');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (39, 'distinctio', 'http://conroy.com/', 7, 9, 'Autem quo fugit quasi pariatur sint vel.', '18:55:16', 8784606, 'The poor little juror (it was exactly one a-piece all round. (It was this last remark that had fluttered down from the trees had a large pigeon had flown into her head. \'If I eat or drink anything;.', '1973-06-13', '1993-04-29 13:28:12');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (41, 'nihil', 'http://www.howeziemann.com/', 6, 11, 'Illo qui pariatur est voluptates qui ab.', '10:00:30', 292, 'I think it so quickly that the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into her head. Still she went on, \'if you don\'t even know what.', '1992-10-09', '2003-01-05 19:31:11');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (42, 'et', 'http://www.zulauf.com/', 8, 12, 'Minus omnis unde cum itaque laborum.', '18:57:18', 95932, 'Dormouse,\' the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began to feel which way it was the Duchess\'s cook. She carried the pepper-box in her brother\'s Latin Grammar, \'A mouse--of.', '2003-10-31', '1999-02-22 20:20:39');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (43, 'cum', 'http://koch.com/', 6, 13, 'Impedit fugiat doloribus expedita officia earum.', '02:15:07', 0, 'I wonder?\' And here Alice began telling them her adventures from the Gryphon, with a table in the pool, and the Panther were sharing a pie--\' [later editions continued as follows When the Mouse was.', '1977-03-10', '1995-12-15 16:53:29');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (44, 'fuga', 'http://dachhagenes.info/', 9, 14, 'Itaque maxime a illum.', '15:04:30', 34, 'Panther took pie-crust, and gravy, and meat, While the Owl had the best cat in the sea, \'and in that case I can creep under the sea,\' the Gryphon only answered \'Come on!\' cried the Gryphon, and the.', '1987-10-23', '1990-11-06 16:37:03');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (45, 'porro', 'http://www.schmidtdibbert.com/', 4, 15, 'Tempora sit sed occaecati dolorum molestiae cumque molestias.', '08:03:20', 58104056, 'Either the well was very likely true.) Down, down, down. There was a child,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the archbishop find?\' The Mouse did not seem.', '1972-10-02', '1989-12-18 11:36:04');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (46, 'et', 'http://runolfsson.net/', 9, 16, 'Non consequatur odio libero.', '14:45:28', 445169, 'Lory hastily. \'I don\'t think--\' \'Then you should say what you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a thick wood. \'The first thing she heard the Rabbit came up to the.', '1993-02-04', '1989-02-04 04:28:11');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (47, 'minima', 'http://balistreriturcotte.biz/', 7, 17, 'Quia illo molestiae facilis temporibus aut saepe modi.', '07:26:52', 93988419, 'Alice. \'Then it doesn\'t matter much,\' thought Alice, \'and why it is to give the prizes?\' quite a conversation of it had grown in the air. Even the Duchess asked, with another dig of her little.', '1988-02-20', '1974-08-16 19:33:22');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (48, 'ut', 'http://www.mantemonahan.com/', 1, 18, 'Voluptatibus qui ab perspiciatis molestiae.', '06:11:25', 0, 'Alice whispered to the executioner: \'fetch her here.\' And the Eaglet bent down its head to keep back the wandering hair that WOULD always get into that lovely garden. First, however, she waited.', '1989-07-26', '1985-04-06 18:41:11');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (49, 'reprehenderit', 'http://www.monahan.com/', 5, 19, 'Rerum vero quam error quia eius quae.', '18:22:20', 73, 'Pigeon. \'I can see you\'re trying to invent something!\' \'I--I\'m a little before she had peeped into the darkness as hard as she said to the end of the Queen till she shook the house, \"Let us both go.', '2003-06-20', '2004-08-14 00:13:13');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (50, 'et', 'http://www.senger.biz/', 4, 20, 'Nemo quae molestiae blanditiis et expedita sint.', '21:42:04', 739944, 'Alice coming. \'There\'s PLENTY of room!\' said Alice a little hot tea upon its forehead (the position in which you usually see Shakespeare, in the distance. \'And yet what a dear little puppy it was!\'.', '1979-01-05', '1999-02-21 06:03:23');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (51, 'cupiditate', 'http://www.welch.com/', 9, 21, 'Sunt voluptatem rerum quaerat velit.', '23:04:06', 971489, 'How funny it\'ll seem to put it more clearly,\' Alice replied in a natural way again. \'I should have croqueted the Queen\'s shrill cries to the King, \'that saves a world of trouble, you know, and he.', '1974-05-24', '2015-08-22 22:11:24');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (52, 'ut', 'http://jaskolski.com/', 8, 22, 'Esse fugit provident et libero quia autem tenetur.', '23:34:12', 6, 'Alice as he found it very hard indeed to make out what it meant till now.\' \'If that\'s all I can kick a little!\' She drew her foot as far as they lay on the bank, and of having the sentence first!\'.', '2019-10-24', '1977-09-29 15:34:09');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (53, 'qui', 'http://www.smitham.com/', 1, 23, 'Dicta dicta fugiat non velit eius eveniet ipsam.', '22:41:22', 6473, 'He only does it to speak with. Alice waited a little, and then the Mock Turtle. \'Certainly not!\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were all shaped like.', '2020-06-14', '2002-11-16 23:47:55');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (54, 'perspiciatis', 'http://dickinsonrunolfsson.com/', 6, 24, 'Fugit suscipit deleniti labore consequatur consequuntur nisi ut.', '05:45:42', 893, 'And here poor Alice in a natural way. \'I thought it over a little timidly, for she was dozing off, and found herself lying on the spot.\' This did not like the largest telescope that ever was!.', '2004-10-05', '2018-05-07 02:20:28');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (55, 'voluptatem', 'http://www.prohaskaconn.net/', 5, 25, 'Quidem qui eligendi asperiores sit vero nobis repudiandae.', '10:53:30', 369, 'King: \'however, it may kiss my hand if it began ordering people about like mad things all this time, sat down a good way off, panting, with its wings. \'Serpent!\' screamed the Queen. \'Can you play.', '2017-12-05', '1998-04-15 14:36:42');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (56, 'ut', 'http://lebsackortiz.com/', 4, 26, 'Deleniti est vel deserunt ducimus.', '08:18:57', 477, 'THAT direction,\' waving the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the Rabbit asked. \'No, I give you fair warning,\' shouted the Queen, and in.', '1973-05-21', '1981-04-30 04:42:52');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (57, 'fugiat', 'http://murazik.com/', 2, 27, 'Voluptatibus voluptatem esse qui dolorum.', '23:00:56', 3468, 'Alice soon began talking again. \'Dinah\'ll miss me very much at first, perhaps,\' said the Cat, and vanished. Alice was very deep, or she should meet the real Mary Ann, what ARE you talking to?\' said.', '1973-11-28', '1970-11-16 13:50:40');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (58, 'et', 'http://www.leffler.com/', 1, 28, 'Amet sunt iure temporibus provident.', '13:38:01', 1685464, 'I see\"!\' \'You might just as well. The twelve jurors were all talking at once, with a little of it?\' said the Dormouse, and repeated her question. \'Why did you ever saw. How she longed to get her.', '1985-07-09', '2014-12-03 19:06:07');
INSERT INTO `songs` (`song_id`, `song_name`, `youtube_link`, `album`, `artist_id`, `title`, `length`, `track_number`, `lyrics`, `created_at`, `upload_at`) VALUES (60, 'reiciendis', 'http://www.sawaynwilderman.com/', 9, 30, 'Magni incidunt impedit saepe omnis vel illo qui eos.', '19:05:21', 18158905, 'She had quite forgotten the Duchess was sitting on a three-legged stool in the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with an M, such as.', '2020-04-06', '2014-07-18 13:36:07');

CREATE TABLE `playlist`(
    `playlist_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `cover_img` TEXT NOT NULL,
    `created_at` DATE NOT NULL,
    `upload_at` DATETIME NOT NULL,
    PRIMARY KEY (playlist_id)
);
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (1, 'omnis', 'http://lorempixel.com/640/480/', '1998-06-12', '2016-04-12 01:45:43');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (2, 'temporibus', 'http://lorempixel.com/640/480/', '2002-05-12', '1975-12-25 00:13:45');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (3, 'mollitia', 'http://lorempixel.com/640/480/', '1972-12-13', '1989-07-11 00:35:58');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (4, 'earum', 'http://lorempixel.com/640/480/', '1972-09-28', '2002-07-31 08:31:01');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (5, 'eum', 'http://lorempixel.com/640/480/', '1971-01-06', '2012-02-20 12:49:41');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (6, 'ipsa', 'http://lorempixel.com/640/480/', '2004-03-03', '1980-01-02 13:33:35');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (7, 'quidem', 'http://lorempixel.com/640/480/', '1981-02-04', '1985-04-17 10:37:10');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (8, 'atque', 'http://lorempixel.com/640/480/', '1993-11-30', '2007-05-01 09:26:32');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (9, 'voluptatem', 'http://lorempixel.com/640/480/', '2002-03-12', '1976-01-18 23:28:38');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (10, 'omnis', 'http://lorempixel.com/640/480/', '1970-02-20', '1991-10-10 15:36:36');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (11, 'nesciunt', 'http://lorempixel.com/640/480/', '1984-02-10', '2018-10-09 12:19:44');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (12, 'et', 'http://lorempixel.com/640/480/', '1971-07-12', '1994-04-06 12:37:18');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (13, 'qui', 'http://lorempixel.com/640/480/', '2018-12-14', '1993-10-25 06:09:55');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (14, 'eum', 'http://lorempixel.com/640/480/', '1974-09-08', '1988-07-27 07:07:48');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (15, 'ea', 'http://lorempixel.com/640/480/', '1996-06-05', '2018-08-03 19:40:08');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (16, 'et', 'http://lorempixel.com/640/480/', '1997-09-04', '1991-06-30 04:46:06');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (17, 'placeat', 'http://lorempixel.com/640/480/', '1999-07-03', '1980-02-07 16:47:35');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (18, 'quia', 'http://lorempixel.com/640/480/', '1979-12-06', '2011-03-26 16:45:46');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (19, 'minima', 'http://lorempixel.com/640/480/', '1993-01-26', '1971-12-26 18:15:32');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (20, 'recusandae', 'http://lorempixel.com/640/480/', '2008-05-02', '1992-12-28 20:34:35');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (21, 'sint', 'http://lorempixel.com/640/480/', '2005-05-20', '1998-04-20 05:30:38');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (22, 'occaecati', 'http://lorempixel.com/640/480/', '2017-01-25', '2011-08-13 02:19:42');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (23, 'sed', 'http://lorempixel.com/640/480/', '2002-09-27', '2008-01-27 17:13:56');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (24, 'cum', 'http://lorempixel.com/640/480/', '2003-07-22', '1998-05-02 04:36:09');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (25, 'officia', 'http://lorempixel.com/640/480/', '2016-04-03', '2012-05-02 15:58:36');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (26, 'rem', 'http://lorempixel.com/640/480/', '2018-07-18', '1983-01-28 21:13:46');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (27, 'est', 'http://lorempixel.com/640/480/', '1998-10-21', '2003-03-17 21:33:55');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (28, 'reprehenderit', 'http://lorempixel.com/640/480/', '1974-04-21', '2004-03-28 05:49:49');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (29, 'est', 'http://lorempixel.com/640/480/', '2017-07-23', '1993-08-07 06:20:40');
INSERT INTO `playlist` (`playlist_id`, `name`, `cover_img`, `created_at`, `upload_at`) VALUES (30, 'dolorem', 'http://lorempixel.com/640/480/', '1978-11-13', '1989-10-15 09:04:37');

CREATE TABLE `user_name`(
    `user_name_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `created_at` DATE NOT NULL,
    `upload_at` DATETIME NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `is_admin` TINYINT(1) NOT NULL,
    `preferences` JSON NOT NULL,
    `remember_token` TINYINT(1) NOT NULL,
    UNIQUE (email),
    PRIMARY KEY (user_name_id)
);

CREATE TABLE `song_in_playlist`(
    `song_in_playlins_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `playlist_id` INT UNSIGNED NOT NULL,
    `song_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (song_in_playlins_id),
    FOREIGN KEY(`song_id`) REFERENCES `songs`(`song_id`),
    FOREIGN KEY(`playlist_id`) REFERENCES `playlist`(`playlist_id`)
);

CREATE TABLE `interactions`(
    `data_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_name_id` INT UNSIGNED NOT NULL,
    `song_id` INT UNSIGNED NOT NULL,
    `is_liked` TINYINT(1) NOT NULL,
    `play_count` INT NOT NULL,
    `created_at` DATE NOT NULL,
    PRIMARY KEY (data_id),
    FOREIGN KEY(`user_name_id`) REFERENCES `user_name`(`user_name_id`),
    FOREIGN KEY(`song_id`) REFERENCES `songs`(`song_id`)
);

