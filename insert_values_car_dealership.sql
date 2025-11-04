INSERT INTO cars(salesperson_id, customer_id, vin, brand, model, year, cost, is_new , mileage)
VALUES (1, 2, '4Y1SL65848Z411439', 'Toyota', 'Camry', 2022, 19000.99, FALSE, 50000),
(NULL, 3, '1FT7X2BN4RED77722', 'Lexus', 'NX300h', 2017, 20000.99, FALSE, 130000),
(1, 1, 'JM1HD4618N0124832', 'Mazda', '929', 2024, 25000.99, FALSE, 30000),
(2, 2, 'YV1LW5244W2522439', 'Honda', 'VT750C2', 2026, 320000.99, TRUE, 10),
(3, 5, '1HFTE44H7F4102747', 'Mitsubishi', '3000GT', 1995, 2000.99, FALSE, 330000),
(NULL, 2, '1FTHS2426VHA63343', 'Chevrolet', 'C/K1500', 1989, 25000.99, FALSE, 10000),
(4, 4, 'JF1GM2253TG415807', 'Subaru', 'Impreza', 1996, 7000.99, FALSE, 300000),
(5, 1, '1F65F5KY3B0A01654', 'Ford', 'Stripped', 2011, 8000.99, FALSE, 220000);

INSERT INTO customers(first_name, last_name, phone, email, street , city, state, zip_code)
VALUES('Hoda', 'Jahangiri', '+14084556000', 'hoda.j@example.com', 'colman', 'San Jose', 'CA', 95125),
('Mona', 'Gafari', '+14088997000', 'mona.g@example.com', 'sugarpine', 'Scotts Valley', 'CA', 96120),
('John', 'Jay', '+14083356000', 'john.j@example.com', 'bloosemhill', 'San Jose', 'CA', 95345),
('Cyrus', 'William', '+14086676000', 'c.william@example.com', 'cherry', 'San Jose', 'CA', 94567),
('Sally', 'Hilton', '+14098766000', 'sally.hilton@example.com', 'street 123', 'New York', 'NY', 85321);


INSERT INTO invoices(car_id, sale_date, total_cost)
VALUES (1, '2025-07-21', 18999.00),
(3, '2025-10-11', 24150.12),
(4, '2024-09-21', 18999.45),
(5, '2026-03-14', 18999.89),
(7, '2023-01-22', 18999.00),
(8, '2020-08-28', 18999.99);


INSERT INTO mechanic_services (service_ticket_id, mechanic_id, hours_worked, mechanic_notes)
VALUES (1, 1, 2.5, 'oil changed'),
(1, 2, 2.0, 'brakes fixed'),
(2, 3, 0.5, 'hybrid system fixed'),
(2, 1, 1.5, 'air conditioner fixed'),
(4, 5, 9.45, 'painted finished'),
(3, 1, 2.5, 'oil changed'),
(4, 3, 4.0, 'hybrid system fixed'),
(5, 5, 3.5, 'air conditioner fixed');


INSERT INTO mechanics(first_name, last_name , phone , email , specialization)
VALUES('Sally', 'Sun', '4088771000', 'sally.s@example.com', 'engine'),
('Ben', 'Joe', '4088772000', 'ben.j@example.com', 'transmission'),
('Tristan', 'Abraham', '4088773000', 'tristan.abraham@example.com', 'brakes'),
('Julian', 'Rojas', '4088774000', 'julian.rojas@example.com', 'electrical_systems'),
('William', 'Reynolds', '4088775000', 'william.r@example.com', 'air_conditioning'),
('Dillon', 'Porter', '4088776000', 'dillon.p@example.com', 'heavy_equipment');

INSERT INTO salespersons(first_name, last_name , phone , email)
VALUES('Polly', 'Dixon', '+15056328660', 'dixon@example.com'),
('Jackson', 'Reyes', '+15056881961', 'jackson.r@example.com'),
('Norman', 'Leonard', '+13055380954', 'leonard@example.com'),
('Ralph', 'Tyler', '+19792772743', 'ralph.t@example.com'),
('Laurence', 'Donaldson', '+15058435784', 'donaldson@example.com'),
('Ayla', 'Navarro', '+17852049523', 'ayla123@example.com'),
('Oscar', 'Keller', '+14724563240', 'Keller1987@example.com');


INSERT INTO service_tickets(car_id, service_date , service_type, description, labor_cost , parts_cost, total_cost, status)
VALUES (1, '2018-03-21', 'routine_maintenance', 'Next check: 1 year', 300.99, 1200.89, 2500.99, 'on_hold'),
(2, '2021-06-10', 'routine_maintenance', 'Next check: 2 year', 90.99, 500.89, 700.99, 'finished'),
(3, '2022-04-26', 'mechanical_repairs', 'All problems fixed', 100.99, 1220.89, 1600.99, 'in_process'),
(2, '2023-07-28', 'check_services', 'Next check: 3 year', 2000.99, 2200.89, 4500.99, 'pending'),
(5, '2024-09-19', 'check_services', 'Come back for check in one week', 900.99, 100.89, 1100.99, 'finished'),
(4, '2025-02-19', 'mechanical_repairs', 'Next check after 30 miles', 700.99, 600.89, 2000.99, 'in_process');

