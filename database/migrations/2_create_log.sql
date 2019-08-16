-- +goose Up
CREATE TABLE log (
  date DATETIME NOT NULL,
  map JSON NOT NULL,
  PRIMARY KEY (date)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- +goose Down
DROP TABLE log;
