PRAGMA foreign_keys = ON;

CREATE TABLE invoices(
    id INTEGER PRIMARY KEY,
    car_id INTEGER UNIQUE,
    sale_date DATE,
    total_cost DECIMAL(8,2),
    FOREIGN KEY(car_id) REFERENCES cars(id)
);

CREATE TABLE salespersons(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(350),
    last_name VARCHAR(350),
    phone VARCHAR(100),
    email VARCHAR(250)
);

CREATE TABLE cars(
    id INTEGER PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    vin VARCHAR(200) NOT NULL UNIQUE,
    brand VARCHAR(100),
    model VARCHAR(100),
    year INTEGER CHECK (year <= 2026),
    cost DECIMAL(8,2),
    is_new BOOLEAN,
    mileage INTEGER CHECK(mileage >= 0),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE service_tickets(
    id INTEGER PRIMARY KEY,
    car_id INTEGER,
    service_date DATE,
    service_type VARCHAR(100) CHECK(service_type IN ('routine_maintenance', 'mechanical_repairs', 'check_services')),
    description TEXT,
    labor_cost DECIMAL(8,2),
    parts_cost DECIMAL(8,2),
    total_cost DECIMAL(8,2),
    status VARCHAR CHECK(status IN ('pending', 'in_process', 'on_hold', 'finished')),
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

CREATE TABLE customers(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(350),
    last_name VARCHAR(350),
    phone VARCHAR(100),
    email VARCHAR(250),
    street VARCHAR(150),
    city VARCHAR(150),
    state VARCHAR(150),
    zip_code INTEGER
);

CREATE TABLE mechanics(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(350),
    last_name VARCHAR(350),
    phone VARCHAR(100),
    email VARCHAR(250),
    specialization VARCHAR CHECK( specialization IN ('engine', 'transmission', 'brakes', 'electrical_systems','air_conditioning','heavy_equipment'))
);

CREATE TABLE mechanic_services(
    id INTEGER PRIMARY KEY,
    service_ticket_id INTEGER,
    mechanic_id INTEGER,
    hours_worked DECIMAL(5,2),
    mechanic_notes TEXT,
    FOREIGN KEY (service_ticket_id) REFERENCES service_tickets(id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(id)
);




