SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(rating)
FROM properties
JOIN reservations ON reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = '1'
GROUP BY reservations.id, properties.id
ORDER BY start_date;