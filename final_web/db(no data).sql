create database dbtry;
CREATE TABLE `dbtry`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `grade` VARCHAR(16) NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC) VISIBLE);
  
  CREATE TABLE `dbtry`.`problem` (
  `problem_id` INT NOT NULL AUTO_INCREMENT,
  `content` TEXT NOT NULL,
  `answer` TEXT NOT NULL,
  `review` TEXT NULL,
  `type` VARCHAR(16) NULL,
  `subject` VARCHAR(16) NULL,
  `grade` VARCHAR(16) NULL,
  PRIMARY KEY (`problem_id`));
  
  CREATE TABLE `dbtry`.`personal_question_bank` (
  `user_id` INT NOT NULL,
  `problem_id` INT NOT NULL,
  `add_time` DATE NOT NULL,
  PRIMARY KEY (`user_id`, `problem_id`),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `dbtry`.`user` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
