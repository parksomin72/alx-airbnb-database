-- Users
INSERT INTO users (user_id, full_name, email, password_hash, phone_number, role)
VALUES
  ('c1a1b1e0-0000-4000-8000-000000000001', 'Alice Johnson', 'alice@example.com', 'hashedpassword123', '1234567890', 'host'),
  ('c1a1b1e0-0000-4000-8000-000000000002', 'Bob Smith', 'bob@example.com', 'hashedpassword456', '0987654321', 'guest'),
  ('c1a1b1e0-0000-4000-8000-000000000003', 'Charlie Lee', 'charlie@example.com', 'hashedpassword789', '1122334455', 'guest');

-- Properties
INSERT INTO properties (property_id, host_id, title, description, location, price_per_night, max_guests)
VALUES
  ('d2b2c2f0-0000-4000-8000-000000000001', 'c1a1b1e0-0000-4000-8000-000000000001', 'Cozy Cottage', 'A quiet retreat in the woods.', 'Portland, OR', 120.00, 4),
  ('d2b2c2f0-0000-4000-8000-000000000002', 'c1a1b1e0-0000-4000-8000-000000000001', 'City Loft', 'Modern loft in downtown.', 'New York, NY', 200.00, 2);

-- Bookings
INSERT INTO bookings (booking_id, user_id, property_id, check_in, check_out, total_price, status)
VALUES
  ('e3c3d3g0-0000-4000-8000-000000000001', 'c1a1b1e0-0000-4000-8000-000000000002', 'd2b2c2f0-0000-4000-8000-000000000001', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
  ('e3c3d3g0-0000-4000-8000-000000000002', 'c1a1b1e0-0000-4000-8000-000000000003', 'd2b2c2f0-0000-4000-8000-000000000002', '2025-07-10', '2025-07-12', 400.00, 'pending');

-- Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('f4d4e4h0-0000-4000-8000-000000000001', 'e3c3d3g0-0000-4000-8000-000000000001', 480.00, 'credit_card'),
  ('f4d4e4h0-0000-4000-8000-000000000002', 'e3c3d3g0-0000-4000-8000-000000000002', 400.00, 'paypal');

-- Reviews
INSERT INTO reviews (review_id, booking_id, rating, comment)
VALUES
  ('g5e5f5i0-0000-4000-8000-000000000001', 'e3c3d3g0-0000-4000-8000-000000000001', 5, 'Amazing place! Super clean and peaceful.');

-- Messages
INSERT INTO messages (message_id, sender_id, recipient_id, content)
VALUES
  ('h6f6g6j0-0000-4000-8000-000000000001', 'c1a1b1e0-0000-4000-8000-000000000002', 'c1a1b1e0-0000-4000-8000-000000000001', 'Hi! Is the property available on the weekend?'),
  ('h6f6g6j0-0000-4000-8000-000000000002', 'c1a1b1e0-0000-4000-8000-000000000001', 'c1a1b1e0-0000-4000-8000-000000000002', 'Yes, it is! Feel free to book it anytime.');
