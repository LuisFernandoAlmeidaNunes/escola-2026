    CREATE TABLE `resource` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) NULL,
    `description` VARCHAR(200) NULL,
    `position` INT NULL,
    `imgUri` VARCHAR(200) NULL,
    `type` VARCHAR(60) NULL,
    `offer_id` BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_resource_offer_idx` (`offer_id` ASC) VISIBLE,
    CONSTRAINT `FK_resource_offer`
    FOREIGN KEY (`offer_id`)
    REFERENCES `offer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    INSERT INTO resource
    (title, description, position, imgUri, type, offer_id)
    VALUES
    ('Introdução ao Java',
     'Primeiros passos na linguagem Java',
     1,
     'img/java-intro.png',
     'LESSON',
     1);

    INSERT INTO resource
    (title, description, position, imgUri, type, offer_id)
    VALUES
    ('Fundamentos do Spring Boot',
     'Criação de APIs REST com Spring Boot',
     1,
     'img/spring-api.png',
     'LESSON',
     2);

    INSERT INTO resource
    (title, description, position, imgUri, type, offer_id)
    VALUES
    ('Componentes React',
     'Criação e reutilização de componentes',
     1,
     'img/react-components.png',
     'LESSON',
     3);