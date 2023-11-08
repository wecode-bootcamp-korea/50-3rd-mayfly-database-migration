-- migrate:up
CREATE TABLE orders (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  class_id INT NOT NULL,
  email VARCHAR(255) NOT NULL,
  quantity INT,
  status INT,
  qr_code text,
  deleted_at TIMESTAMP,
  created_at TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (class_id) REFERENCES classes(id)
)


-- migrate:down

