-- +goose Up
CREATE TABLE list(
  id int(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY `id` (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--  + goose Down
DROP TABLE list;
