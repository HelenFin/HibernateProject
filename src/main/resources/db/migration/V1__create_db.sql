CREATE TABLE client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE planet (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    distance DOUBLE NOT NULL
);

CREATE TABLE ticket (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    planet_id INT NOT NULL,
    purchase_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (planet_id) REFERENCES planet(id)
);
