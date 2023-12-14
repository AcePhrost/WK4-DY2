CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    membership VARCHAR(3),
    movie_ticket VARCHAR
)

CREATE TABLE ticket(
    movie_ticket VARCHAR PRIMARY KEY,
    showtime TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    theatre_room INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE movie(
    movie_id VARCHAR PRIMARY KEY,
    showtime TIMESTAMP,
    rating VARCHAR
    FOREIGN KEY (movie_ticket) REFERENCES ticket(movie_ticket)
    FOREIGN KEY ()
)

CREATE TABLE concession(
    item_id VARCHAR PRIMARY KEY,
    price SERIAL,
    membership VARCHAR
)