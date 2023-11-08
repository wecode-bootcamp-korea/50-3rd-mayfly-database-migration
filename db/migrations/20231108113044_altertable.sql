-- migrate:up
alter table schedules drop FOREIGN KEY (user_id) REFERENCES users(id);
alter table schedules drop column user_id;
alter table schedules add column enrolled_member;

alter table orders add column schedule_id;
ALTER TABLE orders ADD CONSTRAINT fk_orders_schedules FOREIGN KEY (schedule_id) REFERENCES schedules (id);

-- migrate:down

