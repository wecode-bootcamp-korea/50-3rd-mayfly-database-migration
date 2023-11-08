-- migrate:up
CREATE TABLE schedules (
  id INT PRIMARY KEY AUTO_INCREMENT,
  class_day VARCHAR(255),
  teacher_desc VARCHAR(255) NOT NULL,
  user_id INT,
  class_id INT,
  class_time VARCHAR(255),
  status INT,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (class_id) REFERENCES classes(id)
);


-- migrate:down

