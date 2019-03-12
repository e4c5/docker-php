CREATE DATABASE demo;
USE demo;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `access_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES (1,'student','$2y$10$RN4MjkW15d8vhmE08NfHguikcxQhjrRSvakMQKYKZXMwn8lW/3yA.','test@test.com',1),
(2,'prof','$2y$10$RN4MjkW15d8vhmE08NfHguikcxQhjrRSvakMQKYKZXMwn8lW/3yA.','test2@test.com',2),
(3,'manager','$2y$10$RN4MjkW15d8vhmE08NfHguikcxQhjrRSvakMQKYKZXMwn8lW/3yA.','test3@test.com',3),
(4,'admin','$2y$10$RN4MjkW15d8vhmE08NfHguikcxQhjrRSvakMQKYKZXMwn8lW/3yA.','test4@test.com',4);
