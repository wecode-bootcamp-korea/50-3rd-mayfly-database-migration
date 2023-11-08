-- migrate:up
CREATE TABLE message (
  id INT PRIMARY KEY AUTO_INCREMENT,
  content TEXT,
  type INT,
  chat_id INT NOT NULL,
  created_at TIMESTAMP,
  FOREIGN KEY (chat_id) REFERENCES chat(id)
);


-- migrate:down

