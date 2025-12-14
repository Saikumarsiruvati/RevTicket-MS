USE user_db;
INSERT INTO users (name, email, password, phone, role, is_blocked) VALUES
('Admin User', 'admin@revtickets.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '9999999999', 'ADMIN', 0),
('Test User', 'user@test.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '8888888888', 'USER', 0),
('John Doe', 'john@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '7777777777', 'USER', 0);

USE event_db;
INSERT INTO venues (name, city, address, total_seats, type, is_active) VALUES
('PVR Cinemas', 'Mumbai', 'Phoenix Mall, Lower Parel', 300, 'CINEMA', 1),
('INOX', 'Bangalore', 'Garuda Mall, Magrath Road', 250, 'CINEMA', 1),
('AMB Cinemas', 'Hyderabad', 'Gachibowli', 400, 'CINEMA', 1),
('Wankhede Stadium', 'Mumbai', 'D Road, Churchgate', 33000, 'STADIUM', 1),
('M Chinnaswamy Stadium', 'Bangalore', 'MG Road', 40000, 'STADIUM', 1);

INSERT INTO events (title, category, language, genre_or_type, description, city, venue, date_time, duration_minutes, poster_url, rating, price, is_active) VALUES
('Avengers: Endgame', 'MOVIES', 'English', 'Action', 'Epic superhero movie - The final battle', 'Mumbai', 'PVR Cinemas', '2025-12-15 18:00:00', 180, 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?w=400', 4.5, 300, 1),
('KGF Chapter 2', 'MOVIES', 'Hindi', 'Action', 'Action packed thriller with mass elements', 'Bangalore', 'INOX', '2025-12-16 19:00:00', 168, 'https://images.unsplash.com/photo-1594908900066-3f47337549d8?w=400', 4.3, 250, 1),
('RRR', 'MOVIES', 'Telugu', 'Action', 'Period action drama - A tale of two revolutionaries', 'Hyderabad', 'AMB Cinemas', '2025-12-17 20:00:00', 187, 'https://images.unsplash.com/photo-1574267432644-f610f5b7e4d1?w=400', 4.7, 280, 1),
('IPL 2025 Final', 'SPORTS', 'English', 'Cricket', 'Indian Premier League Final Match', 'Mumbai', 'Wankhede Stadium', '2025-12-20 19:30:00', 240, 'https://images.unsplash.com/photo-1531415074968-036ba1b575da?w=400', 4.8, 1500, 1),
('Arijit Singh Live', 'MUSIC', 'Hindi', 'Concert', 'Live concert by Arijit Singh', 'Bangalore', 'M Chinnaswamy Stadium', '2025-12-22 18:00:00', 180, 'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?w=400', 4.6, 2000, 1),
('Pushpa 2', 'MOVIES', 'Telugu', 'Action', 'The rule continues - Mass action entertainer', 'Hyderabad', 'AMB Cinemas', '2025-12-25 21:00:00', 175, 'https://images.unsplash.com/photo-1598899134739-24c46f58b8c0?w=400', 4.4, 300, 1);

INSERT INTO shows (event_id, venue_id, show_date, show_time, available_seats, price, is_active) VALUES
(1, 1, '2025-12-15', '2025-12-15 18:00:00', 300, 300, 1),
(1, 1, '2025-12-15', '2025-12-15 21:00:00', 300, 300, 1),
(2, 2, '2025-12-16', '2025-12-16 19:00:00', 250, 250, 1),
(2, 2, '2025-12-16', '2025-12-16 22:00:00', 250, 250, 1),
(3, 3, '2025-12-17', '2025-12-17 20:00:00', 400, 280, 1),
(4, 4, '2025-12-20', '2025-12-20 19:30:00', 33000, 1500, 1),
(5, 5, '2025-12-22', '2025-12-22 18:00:00', 40000, 2000, 1),
(6, 3, '2025-12-25', '2025-12-25 21:00:00', 400, 300, 1);
