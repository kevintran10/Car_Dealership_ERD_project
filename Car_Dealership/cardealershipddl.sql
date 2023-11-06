CREATE TABLE Salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    e_mail VARCHAR
);

CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    phone_num VARCHAR,
    e_mail VARCHAR,
    age INTEGER
);

CREATE TABLE Car (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR,
    model VARCHAR,
    car_year INTEGER,
    color VARCHAR,
    price VARCHAR,
    customer_id INTEGER,
    salesperson_id INTEGER,
    VIN VARCHAR(17)
);

CREATE TABLE Service (
    service_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
    car_id INTEGER,
    FOREIGN KEY(car_id) REFERENCES Car(car_id),
    serv_date VARCHAR,
    type_of_serv VARCHAR
);

CREATE TABLE Mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE ServiceHistory (
    servicehistory_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY(car_id) REFERENCES Car(car_id),
    mechanic_id INTEGER,
    FOREIGN KEY(mechanic_id) REFERENCES Mechanic(mechanic_id),
    serv_date VARCHAR,
    FOREIGN KEY(serv_date) REFERENCES Service(serv_date),
    type_of_serv VARCHAR,
    FOREIGN KEY(type_of_serv) REFERENCES Service(type_of_serv)
);

CREATE TABLE Invoice (
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    salesperson_id INTEGER,
    car_id INTEGER,
    date VARCHAR,
    price INTEGER
);
