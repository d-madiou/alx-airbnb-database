-- Create an index on user_id in the User table
CREATE INDEX idx_user_id ON User(user_id);

-- Create an index on email in the User table
CREATE INDEX idx_user_email ON User(email);

-- Create an index on user_id in the Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Create an index on property_id in the Booking table
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Create an index on property_id in the Property table
CREATE INDEX idx_property_id ON Property(property_id);

-- Create an index on location in the Property table
CREATE INDEX idx_property_location ON Property(location);

EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 123;