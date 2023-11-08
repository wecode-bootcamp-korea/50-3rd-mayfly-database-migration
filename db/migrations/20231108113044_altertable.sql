-- migrate:up

alter table schedules add enrolled_member integer;

alter table orders add schedule_id integer;
ALTER TABLE orders ADD CONSTRAINT fk_orders_schedules FOREIGN KEY (schedule_id) REFERENCES schedules (id);

-- migrate:down

