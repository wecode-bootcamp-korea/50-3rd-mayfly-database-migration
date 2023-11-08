-- migrate:up
CREATE TABLE hosts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  credit INT,
  bank_account VARCHAR(255),
  deleted_at TIMESTAMP,
  updated_at TIMESTAMP,
  created_at TIMESTAMP
);

-- migrate:down

