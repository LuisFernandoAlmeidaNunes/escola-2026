DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `img_gray_uri` varchar(255) DEFAULT NULL,
  `img_uri` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `offer`;
CREATE TABLE `offer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `edition` varchar(255) DEFAULT NULL,
  `end_moment` datetime(6) DEFAULT NULL,
  `start_moment` datetime(6) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1q17i2dp3jm59xlih21imsakd` (`course_id`),
  CONSTRAINT `FK1q17i2dp3jm59xlih21imsakd` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO course (img_gray_uri, img_uri, name)
VALUES
('img/java-gray.png', 'img/java.png', 'Curso de Java');

INSERT INTO course (img_gray_uri, img_uri, name)
VALUES
('img/spring-gray.png', 'img/spring.png', 'Curso de Spring Boot');

INSERT INTO course (img_gray_uri, img_uri, name)
VALUES
('img/react-gray.png', 'img/react.png', 'Curso de React');

INSERT INTO offer
(edition, start_moment, end_moment, course_id)
VALUES
('1.0', '2026-01-01 08:00:00', '2026-06-30 23:59:59', 1),
('1.0', '2026-02-01 08:00:00', '2026-07-31 23:59:59', 2),
('1.0', '2026-03-01 08:00:00', '2026-08-31 23:59:59', 3);