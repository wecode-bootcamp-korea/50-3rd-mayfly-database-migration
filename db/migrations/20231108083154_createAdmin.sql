-- migrate:up
CREATE TABLE admins (
  id INT PRIMARY KEY AUTO_INCREMENT,
  admin_id varchar(255),
  password varchar(255)
);



-- migrate:down

