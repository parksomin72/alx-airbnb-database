-- Users
INSERT INTO users (user_id, full_name, email, password_hash, phone_number, role)
VALUES
  (1, 'Alice Johnson', 'alice@example.com', 'hashedpassword123', '1234567890', 'host'),
  (2, 'Bob Smith', 'bob@example.com', 'hashedpassword456', '0987654321', 'guest'),
  (3, 'Charlie Lee', 'charlie@example.com', 'hashedpassword789', '1122334455', 'guest');

-- Properties
INSERT INTO properties (property_id, host_id, title, description, location, price_per_night, max_guests)
VALUES
  (1, 1, 'Cozy Cottage', 'A quiet retreat in the woods.', 'Portland, OR', 120.00, 4),
  (2, 1, 'City Loft', 'Modern loft in downtown.', 'New York, NY', 200.00, 2);

-- Bookings
INSERT INTO bookings (booking_id, user_id, property_id, check_in, check_out, total_price, status)
VALUES
  (1, 2, 1, '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
  (2, 3, 2, '2025-07-10', '2025-07-12', 400.00, 'pending');

-- Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  (1, 1, 480.00, 'credit_card'),
  (2, 2, 400.00, 'paypal');

-- Reviews
INSERT INTO reviews (review_id, booking_id, rating, comment)
VALUES
  (1, 1, 5, 'Amazing place! Super clean and peaceful.');

-- Messages
INSERT INTO messages (message_id, sender_id, recipient_id, content)
VALUES
  (1, 2, 1, 'Hi! Is the property available on the weekend?'),
  (2, 1, 2, 'Yes, it is! Feel free to book it anytime.');
