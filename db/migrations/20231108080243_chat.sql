-- migrate:up
CREATE TABLE chat (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  host_id INT,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (host_id) REFERENCES hosts(id)
);


-- migrate:down

