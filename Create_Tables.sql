-- 1. Show all events.
SELECT * FROM events;

-- 2. List all venues and their capacities.
SELECT venue_name, city, capacity FROM venues;

-- 3. Find all attendees for a specific event.
SELECT a.first_name, a.last_name, a.email
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id
JOIN events e ON t.event_id = e.event_id
WHERE e.event_name = 'Music Concert';

-- 4. Count total attendees for each event.
SELECT e.event_name, COUNT(t.ticket_id) AS total_attendees
FROM events e
LEFT JOIN tickets t ON e.event_id = t.event_id
GROUP BY e.event_name;

-- 5. Show all tickets booked by a specific attendee.
SELECT e.event_name, t.seat_number, t.status
FROM tickets t
JOIN events e ON t.event_id = e.event_id
WHERE t.attendee_id = 1;

-- 6. Find total revenue for each event.
SELECT e.event_name, e.ticket_price,
       COUNT(t.ticket_id) * e.ticket_price AS revenue
FROM events e
LEFT JOIN tickets t ON e.event_id = t.event_id
GROUP BY e.event_name, e.ticket_price;

-- 7. List events happening in a specific city.
SELECT e.event_name, v.city, e.event_date
FROM events e
JOIN venues v ON e.venue_id = v.venue_id
WHERE v.city = 'New York';

-- 8. Event with venue capacity and total booked tickets.
SELECT e.event_name, v.capacity, COUNT(t.ticket_id) AS booked
FROM events e
JOIN venues v ON e.venue_id = v.venue_id
LEFT JOIN tickets t ON e.event_id = t.event_id
GROUP BY e.event_id;

-- 9. Attendees who have cancelled tickets.
SELECT DISTINCT a.first_name, a.last_name
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id
WHERE t.status = 'Cancelled';

-- 10. All tickets for a specific date.
SELECT t.ticket_id, e.event_name, t.seat_number
FROM tickets t
JOIN events e ON t.event_id = e.event_id
WHERE e.event_date = '2025-10-15';

-- 11. Count total tickets booked by each attendee.
SELECT a.first_name, a.last_name, COUNT(t.ticket_id) AS total_tickets
FROM attendees a
LEFT JOIN tickets t ON a.attendee_id = t.attendee_id
GROUP BY a.attendee_id;

-- 12. Events that have at least one ticket booked.
SELECT e.event_name, COUNT(t.ticket_id) AS total_attendees
FROM events e
JOIN tickets t ON e.event_id = t.event_id
GROUP BY e.event_id
HAVING total_attendees > 0;

-- 13. Events with venue and city.
SELECT e.event_name, v.venue_name, v.city
FROM events e
JOIN venues v ON e.venue_id = v.venue_id;

-- 14. Next upcoming event.
SELECT e.event_name, e.event_date
FROM events e
WHERE e.event_date > CURDATE()
ORDER BY e.event_date ASC
LIMIT 1;

-- 15. Attendees with the events they booked.
SELECT a.first_name, a.last_name, e.event_name, t.seat_number
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id
JOIN events e ON t.event_id = e.event_id;
