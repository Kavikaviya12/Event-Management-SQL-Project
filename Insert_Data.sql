1. Insert Data for venues Table
INSERT INTO venues (venue_id, venue_name, city, capacity)
VALUES
(1, 'Grand Arena', 'New York', 5000),
(2, 'City Hall Auditorium', 'Chicago', 2000),
(3, 'Skyline Convention Center', 'Los Angeles', 3500),
(4, 'Music Dome', 'New York', 4500);

2. Insert Data for events Table
INSERT INTO events (event_id, event_name, event_date, ticket_price, venue_id)
VALUES
(1, 'Music Concert', '2025-10-15', 120, 1),
(2, 'Tech Expo', '2025-08-20', 80, 3),
(3, 'Food Festival', '2025-12-05', 50, 2),
(4, 'Startup Meetup', '2025-11-10', 30, 3),
(5, 'Comedy Night', '2025-09-18', 90, 4);

3. Insert Data for attendees Table
INSERT INTO attendees (attendee_id, first_name, last_name, email)
VALUES
(1, 'John', 'Doe', 'john.doe@mail.com'),
(2, 'Emma', 'Stone', 'emma.stone@mail.com'),
(3, 'Ryan', 'Smith', 'ryan.smith@mail.com'),
(4, 'Sophia', 'Lee', 'sophia.lee@mail.com'),
(5, 'Daniel', 'Brown', 'daniel.brown@mail.com');

4. Insert Data for tickets Table
INSERT INTO tickets (ticket_id, attendee_id, event_id, seat_number, status)
VALUES
(1, 1, 1, 'A12', 'Booked'),
(2, 1, 2, 'B05', 'Booked'),
(3, 2, 1, 'A20', 'Cancelled'),
(4, 3, 3, 'C10', 'Booked'),
(5, 4, 1, 'A30', 'Booked'),
(6, 5, 4, 'D02', 'Booked'),
(7, 2, 5, 'E15', 'Booked'),
(8, 3, 5, 'E16', 'Booked');
