-- migrate:up
CREATE TABLE likes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  class_id INT NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP,
  FOREIGN KEY (class_id) REFERENCES classes(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);


-- migrate:down

