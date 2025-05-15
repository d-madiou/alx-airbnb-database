
/*in the booking table, let's use the range start date to create partioning*/
CREATE TABLE booking (
  booking_id UUID PRIMARY KEY,
  user_id UUID,
  property_id UUID,
  start_date DATE,
  end_date DATE,
  status VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (property_id) REFERENCES property(property_id)
)
PARTITION BY RANGE (YEAR(start_date)) (
  PARTITION p2020 VALUES LESS THAN (2021),
  PARTITION p2021 VALUES LESS THAN (2022),
  PARTITION p2022 VALUES LESS THAN (2023),
  PARTITION p2023 VALUES LESS THAN (2024),
  PARTITION p2024 VALUES LESS THAN (2025),
  PARTITION pmax VALUES LESS THAN MAXVALUE
);

INSERT INTO booking (booking_id, user_id, property_id, start_date, end_date, status)
VALUES 
  (UUID(), UUID(), UUID(), '2021-05-10', '2021-05-15', 'confirmed'),
  (UUID(), UUID(), UUID(), '2022-08-01', '2022-08-10', 'cancelled'),
  (UUID(), UUID(), UUID(), '2023-12-01', '2023-12-05', 'confirmed');


SELECT * FROM booking
WHERE start_date BETWEEN '2022-01-01' AND '2022-12-31';