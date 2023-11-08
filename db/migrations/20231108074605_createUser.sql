-- migrate:up
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  credit INT,
  deleted_at TIMESTAMP,
  updated_at TIMESTAMP,
  created_at TIMESTAMP
);


-- migrate:down

