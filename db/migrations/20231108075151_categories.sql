-- migrate:up
CREATE TABLE top_categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE sub_categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  top_category_id INT NOT NULL,
  FOREIGN KEY (top_category_id) REFERENCES top_categories(id)
);


-- migrate:down

