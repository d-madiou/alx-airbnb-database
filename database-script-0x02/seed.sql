/*Create SQL scripts to populate the database with sample data for the AirBnB database.*/
-- Insert sample data into the users table
INSERT INTO Users (user_id, first_name, last_name, email, password, phone_number, created_at)
VALUES('uuid-01', 'thierno', 'diallo', 'thierno@gmail.com', 'password123', '1234567890', NOW()),
      ('uuid-02', 'mohamed', 'diallo', 'mohamed@gmail.com', 'password123', '9876543210', NOW()),
      ('uuid-03', 'moussa', 'diallo', 'moussa@gmail.com', 'password123', '4567891230', NOW());

-- Insert sample data into the properties table
INSERT INTO Properties (property_id, host_id, name, description, location, price_per_night, created_at)
VALUES('prop-01', 'uuid-01', 'Cozy Apartment', 'A cozy apartment in the city center.', 'New York, NY', 150.00, NOW()),
      ('prop-02', 'uuid-01', 'Beach House', 'A beautiful beach house with ocean views.', 'Miami, FL', 300.00, NOW());
-- Insert sample data into the bookings table
INSERT INTO Bookings (booking_id, user_id, property_id, start_date, end_date, total_price, status, created_at)
VALUES('book-01', 'uuid-02', 'prop-01', '2023-10-01', '2023-10-05', 600.00, 'confirmed', NOW()),
      ('book-02', 'uuid-03', 'prop-02', '2023-11-01', '2023-11-10', 3000.00, 'pending', NOW());
-- Insert sample data into the reviews table
INSERT INTO Reviews (review_id, user_id, property_id, rating, comment, created_at)
VALUES('rev-01', 'uuid-02', 'prop-01', 5, 'Great place to stay!', NOW()),
      ('rev-02', 'uuid-03', 'prop-02', 4, 'Nice beach house, but a bit pricey.', NOW());
-- Insert sample data into the payments table
INSERT INTO Payments (payment_id, booking_id, amount, payment_date)
VALUES('pay-01', 'book-01', 600.00, NOW()),
      ('pay-02', 'book-02', 3000.00, NOW());
-- Insert sample data into the messages table
INSERT INTO Messages (message_id, sender_id, receiver_id, property_id, content, sent_at)
VALUES('msg-01', 'uuid-02', 'uuid-01', 'prop-01', 'Is this property available for the dates I selected?', NOW()),
      ('msg-02', 'uuid-03', 'uuid-01', 'prop-02', 'Can you provide more details about the beach house?', NOW());