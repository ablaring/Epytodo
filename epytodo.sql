DROP DATABASE IF EXISTS epytodo;
CREATE DATABASE epytodo;

USE epytodo;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `firstname` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE (`email`)
);

DROP TABLE IF EXISTS `todo`;

CREATE TABLE `todo` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `due_time` DATETIME NOT NULL,
    `status` ENUM('not started', 'todo', 'in progress', 'done') DEFAULT 'not started',
    `user_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_todo_user_id` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
);
