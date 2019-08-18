-- +goose Up
CREATE TABLE list (
  id int(2)
  UNSIGNED NOT NULL,
  name VARCHAR
  (200) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- +goose Down
DROP TABLE list;
