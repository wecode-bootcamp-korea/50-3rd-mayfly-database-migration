-- migrate:up
CREATE TABLE classes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  host_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  content VARCHAR(255) NOT NULL,
  summary VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  sales INT,
  max_member INT,
  place_id INT,
  top_category_id INT NOT NULL,
  sub_category_id INT NOT NULL,
  deleted_at TIMESTAMP,
  updated_at TIMESTAMP,
  created_at TIMESTAMP,
  FOREIGN KEY (host_id) REFERENCES hosts(id),
  FOREIGN KEY (top_category_id) REFERENCES top_categories(id),
  FOREIGN KEY (sub_category_id) REFERENCES sub_categories(id),
  FOREIGN KEY (place_id) REFERENCES places(id)
);


-- migrate:down

