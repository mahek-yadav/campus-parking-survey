create table if not exists campus_cars (
    car_id varchar(10) primary key,
    car_type varchar(20) not null
);

insert into campus_cars (car_id, car_type) values
('C001', 'Hatchback'),
('C002', 'SUV'),
('C003', 'Sedan'),
('C004', 'SUV'),
('C005', 'Hatchback'),
('C006', 'Sedan'),
('C007', 'SUV'),
('C008', 'Hatchback'),
('C009', 'MUV'),
('C010', 'SUV'),
('C011', 'Sedan'),
('C012', 'Hatchback'),
('C013', 'SUV'),
('C014', 'Sedan'),
('C015', 'Hatchback'),
('C016', 'SUV'),
('C017', 'MUV'),
('C018', 'Sedan'),
('C019', 'SUV'),
('C020', 'Hatchback'),
('C021', 'Sedan'),
('C022', 'SUV'),
('C023', 'Hatchback'),
('C024', 'MUV'),
('C025', 'SUV'),
('C026', 'Sedan'),
('C027', 'Hatchback'),
('C028', 'SUV'),
('C029', 'Sedan'),
('C030', 'Hatchback'),
('C031', 'SUV'),
('C032', 'MUV'),
('C033', 'Sedan'),
('C034', 'SUV'),
('C035', 'Hatchback'),
('C036', 'Sedan'),
('C037', 'SUV'),
('C038', 'Hatchback'),
('C039', 'SUV'),
('C040', 'Sedan'),
('C041', 'Hatchback'),
('C042', 'SUV'),
('C043', 'MUV'),
('C044', 'Sedan'),
('C045', 'Hatchback'),
('C046', 'SUV'),
('C047', 'Sedan'),
('C048', 'Hatchback'),
('C049', 'SUV'),
('C050', 'Hatchback');

-- 1. Count all observed cars.
select count(*) as total_cars
from campus_cars;

-- 2. Count cars in each category.
select car_type, count(*) as car_count
from campus_cars
group by car_type
order by car_type;

-- 3. Show only categories with more than 10 cars.
select car_type, count(*) as car_count
from campus_cars
group by car_type
having count(*) > 10
order by car_count desc;

-- 4. Example of WHERE before grouping: count only SUVs and sedans.
select car_type, count(*) as car_count
from campus_cars
where car_type in ('SUV', 'Sedan')
group by car_type;

-- 5. Use both WHERE and HAVING.
select car_type, count(*) as car_count
from campus_cars
where car_type <> 'MUV'
group by car_type
having count(*) >= 10
order by car_count desc;
