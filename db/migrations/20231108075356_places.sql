-- migrate:up
CREATE TABLE places (
  id INT PRIMARY KEY AUTO_INCREMENT,
  address VARCHAR(255) NOT NULL,
  latitude DECIMAL(9,6) NOT NULL,
  longitude DECIMAL(9,6) NOT NULL,
  created_at TIMESTAMP
);


-- migrate:down

