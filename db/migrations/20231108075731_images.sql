-- migrate:up
CREATE TABLE images (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  image_source VARCHAR(255),
  class_id INT,
  FOREIGN KEY (class_id) REFERENCES classes(id)
);


-- migrate:down

