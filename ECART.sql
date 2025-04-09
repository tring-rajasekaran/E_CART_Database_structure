create table customer(
	id serial primary key,
	name varchar(50),
	email varchar(50),
	password text,
	address text
)

create table merchant(
	id serial primary key,
	name varchar(50),
	email varchar(50),
	password text,
	address text
)

select * from merchant
select * from customer

INSERT INTO merchant(name, email, password)
VALUES
('jayaprakash', 'jayaprakash@gmail.com', 'jayaprakash'),
('barath', 'barath@gmail.com', 'barath');

CREATE TABLE recent_searches (
    id SERIAL PRIMARY KEY,
    customer_id INT references customer(id),
    searched_product_name TEXT NOT NULL,
    searched_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE recent_searches 
ADD CONSTRAINT unique_search UNIQUE (customer_id, searched_product_name);


delete from recent_searches
select * from recent_searches



create table product(
	product_id serial primary key,
	product_name varchar(50),
	description text,
	image text,
	price int,
	merchant_id int references merchant(id)
)


select name , email , address from customer where id = 2
select * from customer

create table orders(
	order_id serial primary key,
	customer_id int references customer(id) on delete cascade,
	product_id int references product(product_id) on delete cascade,
	p int not null
);

select * from orders


select * from merchant

select * from product

alter table product
add image text

select * from cart

select * from cart join product p on p.product_id = cart.product_id
                    where customer_id = 2

SELECT 
    o.product_id, 
    o.quantity,  
    p.product_name, 
    p.description, 
    p.price, 
    p.merchant_id,
	p.image,
	c.name as customer_name ,
	cart.order_status
FROM orders o
JOIN product p ON p.product_id = o.product_id  
join  customer c on c.id = o.customer_id
join cart on cart.customer_id = c.id
WHERE o.customer_id = 2;
 
update product set product_name ='slim fit shirt' where merchant_id =3 and product_id = 18
select * from product


select * from cart

select * from customer
insert into customer(name , email , password , address)
values('raj','raj@','123','hello')

update customer set address ='coimbatore' where id = 2

delete from customer where id = 10

insert into customer(name , email , password) values('raj','raj@','123')

delete from customer where id in(1,3,6,7)
SELECT * FROM product WHERE LOWER(product_name) LIKE LOWER('cotton') OR LOWER(description) LIKE LOWER('cotton')
select * from product


SELECT * FROM product  
WHERE LOWER(product_name) LIKE LOWER('%co%')  
OR LOWER(description) LIKE LOWER('%co%');

delete from product where product_id = 43 and merchant_id = 2


select * from recent_searchs


INSERT INTO product (product_name, description, image, price, merchant_id) VALUES
('Fjallraven Backpack', 'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday', 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', 109, 1),
('Slim Fit T-Shirt', 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing.', 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg', 22, 2),
('Cotton Jacket', 'Great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors.', 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg', 55, 3),
('Casual Shirt', 'The color could be slightly different between on the screen and in practice.', 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg', 15, 4),
('Naga Bracelet', 'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean''s pearl.', 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg', 695, 5),
('Micropave Ring', 'Satisfaction Guaranteed. Return or exchange any order within 30 days.', 'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg', 168, 1),
('Gold Ring', 'Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her.', 'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg', 9, 2),
('Rose Gold Earrings', 'Rose Gold Plated Double Flared Tunnel Plug Earrings.', 'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg', 10, 3),
('WD 2TB HDD', 'USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance.', 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg', 64, 4),
('SanDisk SSD', 'Easy upgrade for faster boot up, shutdown, application load and response.', 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg', 109, 5),
('Silicon Power SSD', '3D NAND flash are applied to deliver high transfer speeds.', 'https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg', 109, 1),
('WD 4TB PS4 Drive', 'Expand your PS4 gaming experience, Play anywhere.', 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg', 114, 2),
('Acer 21.5" Monitor', '21.5 inches Full HD widescreen IPS display.', 'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg', 599, 3),
('Samsung 49" Monitor', '49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR.', 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg', 999, 4),
('3-in-1 Jacket', 'Detachable Functional Liner: Skin Friendly, Lightweight and Warm.', 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg', 56, 5),
('Faux Leather Jacket', 'Faux leather material for style and comfort.', 'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg', 29, 1),
('Rain Jacket', 'Lightweight perfect for trip or casual wear.', 'https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg', 39, 2),
('Boat Neck Top', '95% RAYON 5% SPANDEX, Made in USA or Imported.', 'https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg', 9, 3),
('Moisture T-Shirt', '100% Polyester, Machine wash.', 'https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg', 7, 4),
('Casual Cotton Tee', 'Casual, Short Sleeve, Letter Print, V-Neck, Fashion Tees.', 'https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg', 12, 5);


INSERT INTO product (product_name, description, price, merchant_id, image)
VALUES
    ('Wireless Mouse', 'Ergonomic wireless mouse with high precision tracking.', 1200, 1, 'https://m.media-amazon.com/images/I/41xAn0iwc6L._AC_UY327_FMwebp_QL65_.jpg'),
    ('Mechanical Keyboard', 'RGB backlit mechanical keyboard with blue switches.', 3500, 1, 'https://m.media-amazon.com/images/I/81L4FpeS3VL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Bluetooth Headphones', 'Noise-canceling over-ear headphones with deep bass.', 4500, 2, 'https://m.media-amazon.com/images/I/61zSmicfuzL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Smartwatch', 'Water-resistant smartwatch with fitness tracking.', 5500, 2, 'https://m.media-amazon.com/images/I/71DNvVBvZjL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Laptop Stand', 'Adjustable aluminum laptop stand for better ergonomics.', 2000, 3, 'https://m.media-amazon.com/images/I/61jnQQBK4tL._AC_UY327_FMwebp_QL65_.jpg'),
    ('USB-C Hub', 'Multiport USB-C hub with HDMI, USB 3.0, and SD card reader.', 2500, 3, 'https://m.media-amazon.com/images/I/71Y6DykyeVL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Gaming Chair', 'Ergonomic gaming chair with adjustable armrests and lumbar support.', 12000, 4, 'https://m.media-amazon.com/images/I/61yJRbSSx4L._AC_UL480_FMwebp_QL65_.jpg'),
    ('Portable Speaker', 'Bluetooth portable speaker with 12-hour battery life.', 3000, 4, 'https://m.media-amazon.com/images/I/71b122pwbpL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Wireless Charger', 'Fast wireless charging pad for smartphones.', 1800, 5, 'https://m.media-amazon.com/images/I/71O59aVg-cL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Smart LED Bulb', 'Color-changing LED bulb controllable via mobile app.', 1500, 5, 'https://m.media-amazon.com/images/I/618CqYWw41L._AC_UL480_FMwebp_QL65_.jpg'),
    ('External Hard Drive', '1TB external HDD with high-speed USB 3.0.', 5500, 1, 'https://m.media-amazon.com/images/I/71kD1aVWrqL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Gaming Mouse', 'High DPI gaming mouse with customizable buttons.', 3200, 1, 'https://m.media-amazon.com/images/I/61mpMH5TzkL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Noise Cancelling Earbuds', 'Compact wireless earbuds with active noise cancellation.', 7500, 2, 'https://m.media-amazon.com/images/I/61iwhL7TvUL._AC_UY327_FMwebp_QL65_.jpg'),
    ('4K Monitor', '27-inch 4K UHD monitor with HDR support.', 28000, 2, 'https://m.media-amazon.com/images/I/71jwKclN5HL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Standing Desk', 'Adjustable height standing desk for ergonomic work setup.', 15000, 3, 'https://m.media-amazon.com/images/I/81Ok5PSBVjL._AC_UL480_FMwebp_QL65_.jpg'),
    ('Graphic Tablet', 'Digital drawing tablet with pressure-sensitive stylus.', 8900, 3, 'https://m.media-amazon.com/images/I/51CjePAqJVL._AC_UY327_FMwebp_QL65_.jpg'),
    ('Smart Door Lock', 'Fingerprint and keypad smart lock with WiFi connectivity.', 14000, 4, 'https://m.media-amazon.com/images/I/51qHuL9r-kL._AC_UL480_FMwebp_QL65_.jpg'),
    ('Fitness Tracker', 'Wearable fitness tracker with heart rate monitoring.', 5000, 4, 'https://m.media-amazon.com/images/I/61pa+yejx3L._AC_UY327_FMwebp_QL65_.jpg'),
    ('Power Bank', '10000mAh power bank with fast charging support.', 2500, 5, 'https://m.media-amazon.com/images/I/711WMuCUh5L._AC_UL480_FMwebp_QL65_.jpg'),
    ('VR Headset', 'Virtual reality headset compatible with PC and consoles.', 22000, 5, 'https://m.media-amazon.com/images/I/61eTjWKud8L._AC_UY327_FMwebp_QL65_.jpg')


select * from customer
select * from cart


select c.*,p.*,customer.* from product p
join cart c on c.product_id = p.product_id 
join customer on c.customer_id = customer.id
where merchant_id = 4

CREATE TYPE order_status_enum AS ENUM ('pending', 'accepted', 'rejected');


ALTER TABLE cart 
ADD COLUMN order_status order_status_enum DEFAULT 'pending';

select * from cart

select * from orders
select count(order_id) from cart where customer_id = 2


ALTER TABLE cart
DROP COLUMN order_status;

ALTER TABLE orders
ADD COLUMN order_status order_status_enum DEFAULT 'pending';

select * from customer
select * from recent_searches

select count(*) as total_product from cart where customer_id =2
select address from customer where id = 14
select address from customer where id = 14 and address is not null
select * from product where 

select * from merchant
delete from customer where id =13

select * from orders
delete from orders where product_id = 70 

SELECT * FROM product WHERE product_name = 'Seat Covers' ORDER BY product_id DESC LIMIT 8 OFFSET 2
select o.*,p.*,customer.* from product p
                    join orders o on o.product_id = p.product_id 
                    join customer on o.customer_id = customer.id
                    where merchant_id = 1

select * from customer
select * from merchant
select searched_product_name from recent_searches where customer_id = 4  AND LENGTH(searched_product_name) > 2 limit 5

select * from product where merchant_id = 7
select * from product 

ALTER TABLE product ADD COLUMN quantity INTEGER CHECK (quantity BETWEEN 1 AND 10);

select * from cart join product p on p.product_id = cart.product_id
                    where customer_id = 14

SELECT * FROM product WHERE merchant_id = 2 LIMIT 4 OFFSET 3

UPDATE product
SET quantity = FLOOR(RANDOM() * 16 + 35)
WHERE quantity < 35 OR quantity > 50;



INSERT INTO product (product_name, description, image, price, merchant_id) VALUES
('Brake Pads', 'High-quality ceramic brake pads for smooth stopping.', 'https://m.media-amazon.com/images/I/51PhxZ67ecL._AC_UY327_FMwebp_QL65_.jpg', 1500, 1),
('Engine Oil', 'Fully synthetic engine oil for high performance.', 'https://m.media-amazon.com/images/I/61vwpTnlArL._AC_UL480_FMwebp_QL65_.jpg', 1200, 2),
('Air Filter', 'Durable air filter for improved engine efficiency.', 'https://m.media-amazon.com/images/I/61qe7hzT8SL._AC_UY327_FMwebp_QL65_.jpg', 800, 3),
('Fuel Pump', 'Electric fuel pump for consistent fuel flow.', 'https://m.media-amazon.com/images/I/71kVstZ8M+L._AC_UY327_FMwebp_QL65_.jpg', 3500, 4),
('Radiator', 'Aluminum radiator with high cooling capacity.', 'https://m.media-amazon.com/images/I/61qbyWqi4UL._AC_UY327_FMwebp_QL65_.jpg', 5000, 5),
('Spark Plug', 'Platinum tip spark plug for better ignition.', 'https://m.media-amazon.com/images/I/41O4xJIOHSL._AC_UL480_FMwebp_QL65_.jpg', 400, 1),
('Alternator', 'High-output alternator for stable battery charging.', 'https://m.media-amazon.com/images/I/51wc9SBb0sL._AC_UY327_FMwebp_QL65_.jpg', 7000, 2),
('Timing Belt', 'Durable timing belt to ensure smooth engine timing.', 'https://m.media-amazon.com/images/I/51U06dX7l-L._AC_UL480_FMwebp_QL65_.jpg', 2500, 3),
('Car Battery', 'Maintenance-free battery with long life.', 'https://m.media-amazon.com/images/I/31qNQiy7yFL._AC_UY278_FMwebp_QL65_.jpg', 6000, 4),
('Shock Absorbers', 'Gas-filled shock absorbers for smooth ride.', 'https://m.media-amazon.com/images/I/611YsyoOMWL._AC_UY327_FMwebp_QL65_.jpg', 4500, 5),
('Clutch Kit', 'Complete clutch kit for smooth gear shifting.', 'https://m.media-amazon.com/images/I/21uVN8B-zJL._AC_UL480_FMwebp_QL65_.jpg', 5500, 1),
('Headlights', 'Bright LED headlights for better night vision.', 'https://m.media-amazon.com/images/I/61eVJT1uNAL._AC_UY327_FMwebp_QL65_.jpg', 3200, 2),
('Tail Lights', 'High-intensity tail lights for better visibility.', 'https://m.media-amazon.com/images/I/91-8qmB36LL._AC_UL480_FMwebp_QL65_.jpg', 2800, 3),
('Side Mirror', 'Adjustable side mirror with anti-glare coating.', 'https://m.media-amazon.com/images/I/61PYYCEGGXL._AC_UL480_FMwebp_QL65_.jpg', 1500, 4),
('Muffler', 'Stainless steel muffler for noise reduction.', 'https://m.media-amazon.com/images/I/61W9321KczL._AC_UL480_FMwebp_QL65_.jpg', 3700, 5),
('Windshield Wipers', 'All-weather wipers for clear visibility.', 'https://m.media-amazon.com/images/I/613l0bGj-XL._AC_UL480_FMwebp_QL65_.jpg', 900, 1),
('Steering Wheel Cover', 'Leather steering cover for better grip.', 'https://m.media-amazon.com/images/I/613YHa2ss6L._AC_UY327_FMwebp_QL65_.jpg', 600, 2),
('Horn', 'Loud car horn with dual-tone functionality.', 'https://m.media-amazon.com/images/I/71-yD-9D8gL._AC_UY327_FMwebp_QL65_.jpg', 1200, 3),
('Wheel Bearings', 'High-quality wheel bearings for smooth rotation.', 'https://m.media-amazon.com/images/I/31Uo3ds0vgL._AC_UY218_.jpg', 2500, 4),
('Radiator Hose', 'Heat-resistant radiator hose for coolant flow.', 'https://m.media-amazon.com/images/I/71VsK90kPgL._AC_SR360,240_QL70_.jpg', 1300, 5),
('Car Floor Mats', 'Rubber floor mats for durability.', 'https://m.media-amazon.com/images/I/51G9WjyoN3L._AC_UL480_FMwebp_QL65_.jpg', 800, 1),
('Exhaust Pipe', 'Stainless steel exhaust pipe for longevity.', 'https://m.media-amazon.com/images/I/717XcirkmaL._AC_UY327_FMwebp_QL65_.jpg', 4200, 2),
('Door Handles', 'Chrome-finish door handles for stylish looks.', 'https://m.media-amazon.com/images/I/71Va9K2JfsL._AC_UL480_FMwebp_QL65_.jpg', 1800, 3),
('Sun Visors', 'UV-protected sun visors for comfort.', 'https://m.media-amazon.com/images/I/719TI0JMORL._AC_UL480_FMwebp_QL65_.jpg', 1400, 4),
('Seat Covers', 'Leather seat covers for premium feel.', 'https://m.media-amazon.com/images/I/61De+N4U6aL._AC_UL480_FMwebp_QL65_.jpg', 5000, 5),
('Turbocharger', 'Performance turbocharger for increased power.', 'https://m.media-amazon.com/images/I/61GOOVAG-zL._AC_UL480_FMwebp_QL65_.jpg', 15000, 1),
('AC Compressor', 'Efficient AC compressor for cool air.', 'https://m.media-amazon.com/images/I/71Nz0gpUXeL._AC_UL480_FMwebp_QL65_.jpg', 8500, 2),
('Brake Disc', 'Slotted brake disc for better braking.', 'https://m.media-amazon.com/images/I/51D5PL93MkL._AC_UY327_FMwebp_QL65_.jpg', 3800, 3),
('Transmission Fluid', 'Synthetic transmission fluid for smooth shifting.', 'https://m.media-amazon.com/images/I/617t9o5ZCBL._AC_UL480_FMwebp_QL65_.jpg', 2000, 4),
('Fog Lights', 'Powerful fog lights for better visibility.', 'https://m.media-amazon.com/images/I/61aOQxQenXL._AC_UY327_FMwebp_QL65_.jpg', 2700, 5);





select * from merchant




select o.*,p.*,customer.* from product p
                    join orders o on o.product_id = p.product_id 
                    join customer on o.customer_id = customer.id
                    where merchant_id = 2



UPDATE product
SET quantity = FLOOR(RANDOM() * 16 + 35);

UPDATE product
SET quantity = 40  -- or any number between 35 and 50
WHERE quantity < 35 OR quantity > 50;




ALTER TABLE product
ADD CONSTRAINT product_quantity_check CHECK (quantity BETWEEN 35 AND 50);


INSERT INTO product (product_name, description, image, price, merchant_id) VALUES
('Milk - 1L', 'Fresh full cream milk.', 'https://m.media-amazon.com/images/I/81hr7nGzL1L._AC_UL480_FMwebp_QL65_.jpg', 60, 1),
('Bread - Whole Wheat', 'Soft whole wheat bread loaf.', 'https://m.media-amazon.com/images/I/81X7UjrZJQL._AC_UL480_FMwebp_QL65_.jpg', 40, 2),
('Eggs - 12 Pack', 'Farm fresh eggs.', 'https://m.media-amazon.com/images/I/315ZDO8t4oL._AC_UL480_FMwebp_QL65_.jpg', 75, 3),
('Butter', 'Creamy unsalted butter.', 'https://m.media-amazon.com/images/I/51KrxEKN58L._AC_UL480_FMwebp_QL65_.jpg', 120, 5),
('Rice - Basmati 1kg', 'Premium basmati rice.', 'https://m.media-amazon.com/images/I/71s30bA7zeL._AC_UL480_FMwebp_QL65_.jpg', 90, 4),
('Sugar - 1kg', 'Refined white sugar.', 'https://m.media-amazon.com/images/I/61lsmOAocRL._AC_UL480_FMwebp_QL65_.jpg', 45, 1),
('Salt - Iodized 1kg', 'Fine iodized salt.', 'https://m.media-amazon.com/images/I/71FBxUjtnCL._AC_UL480_FMwebp_QL65_.jpg', 20, 3),
('Cooking Oil - 1L', 'Sunflower cooking oil.', 'https://m.media-amazon.com/images/I/71YsDkOR8pL._AC_UL480_FMwebp_QL65_.jpg', 110, 2),
('Toor Dal - 1kg', 'Split pigeon peas.', 'https://m.media-amazon.com/images/I/61HA0lc+dHL._AC_UL480_FMwebp_QL65_.jpg', 130, 5),
('Wheat Flour - 5kg', 'High-quality wheat flour.', 'https://m.media-amazon.com/images/I/71xzRmVTtIL._AC_UL480_FMwebp_QL65_.jpg', 200, 1),
('Tea Powder - 500g', 'Strong black tea powder.', 'https://m.media-amazon.com/images/I/611rXUi+vkL._AC_UL480_FMwebp_QL65_.jpg', 150, 4),
('Coffee - Instant 100g', 'Instant coffee jar.', 'https://m.media-amazon.com/images/I/8178LaCg6VL._AC_UL480_FMwebp_QL65_.jpg', 130, 2),
('Biscuits - Glucose', 'Crunchy glucose biscuits.', 'https://m.media-amazon.com/images/I/813nDWN+DQL._AC_UL480_FMwebp_QL65_.jpg', 20, 3),
('Chips - Salted', 'Classic salted potato chips.', 'https://m.media-amazon.com/images/I/81uKPwhEEjL._AC_UL480_FMwebp_QL65_.jpg', 30, 5),
('Chocolate - Bar', 'Milk chocolate bar.', 'https://m.media-amazon.com/images/I/61Oq0e2OgWL._AC_UL480_FMwebp_QL65_.jpg', 50, 1),
('Soft Drink - 2L', 'Carbonated soft drink.', 'https://m.media-amazon.com/images/I/714W5PH+dmL._AC_UL480_FMwebp_QL65_.jpg', 80, 4),
('Juice - Orange 1L', 'Pulpy orange juice.', 'https://m.media-amazon.com/images/I/71Z1qMWjBjL._AC_UL480_FMwebp_QL65_.jpg', 90, 2),
('Yogurt - Cup', 'Flavored yogurt cup.', 'https://m.media-amazon.com/images/I/518kaT2JxNL._AC_UL480_FMwebp_QL65_.jpg', 25, 3),
('Paneer - 200g', 'Fresh cottage cheese.', 'https://m.media-amazon.com/images/I/81GG6jT-xjL._AC_UL480_FMwebp_QL65_.jpg', 75, 1),
('Frozen Peas - 500g', 'Green peas, frozen.', 'https://m.media-amazon.com/images/I/91yJ1rrmBQL._AC_UL480_FMwebp_QL65_.jpg', 60, 5),
('Toothpaste', 'Herbal toothpaste.', 'https://m.media-amazon.com/images/I/819yhcCv2WL._AC_UL480_FMwebp_QL65_.jpg', 50, 4),
('Shampoo - 180ml', 'Anti-dandruff shampoo.', 'https://m.media-amazon.com/images/I/51hM3XY+iRL._AC_UL480_FMwebp_QL65_.jpg', 120, 2),
('Soap ', 'Bath soap bars.', 'https://m.media-amazon.com/images/I/510WNJ0CxTL._AC_UL480_FMwebp_QL65_.jpg', 90, 1),
('Detergent Powder - 1kg', 'Stain-fighting detergent.', 'https://m.media-amazon.com/images/I/71OWfsYAyXL._AC_UL480_FMwebp_QL65_.jpg', 110, 3),
('Handwash - 250ml', 'Liquid handwash.', 'https://m.media-amazon.com/images/I/51Qjb094rGL._AC_UL480_FMwebp_QL65_.jpg', 70, 2),
('Dishwash Liquid', 'Lemon dishwashing liquid.', 'https://m.media-amazon.com/images/I/717ZF6moV2L._AC_UL480_FMwebp_QL65_.jpg', 55, 5),
('Toilet Cleaner', 'Thick toilet cleaner gel.', 'https://m.media-amazon.com/images/I/71MXA1DlSkL._AC_UL480_FMwebp_QL65_.jpg', 95, 4),
('Floor Cleaner', 'Lavender floor cleaner.', 'https://m.media-amazon.com/images/I/71r96xO90NL._AC_UL480_FMwebp_QL65_.jpg', 85, 1),
('Garbage Bags - 30pc', 'Large size garbage bags.', 'https://m.media-amazon.com/images/I/71OJTUxKV2L._AC_UL480_FMwebp_QL65_.jpg', 100, 3),
('Aluminum Foil', 'Food-grade foil roll.', 'https://m.media-amazon.com/images/I/61NtI+YhjVL._AC_UL480_FMwebp_QL65_.jpg', 35, 5),
('Paper Towels - 2 Rolls', 'Absorbent paper rolls.', 'https://m.media-amazon.com/images/I/61hZO3mCxhL._AC_UL480_FMwebp_QL65_.jpg', 75, 2),
('Napkins - 100pc', 'Soft tissue napkins.', 'https://m.media-amazon.com/images/I/71VrEnUQulL._AC_UL480_FMwebp_QL65_.jpg', 40, 4),
('Mop - Spin Type', 'Spin bucket mop set.', 'https://m.media-amazon.com/images/I/61ITlnte9uL._AC_UL480_FMwebp_QL65_.jpg', 450, 1),
('Matchbox ', 'Safety matchboxes.', 'https://m.media-amazon.com/images/I/71gC6-6Gt7L._AC_UL480_FMwebp_QL65_.jpg', 20, 3),
('Coconut Oil - 500ml', 'Pure coconut oil.', 'https://m.media-amazon.com/images/I/61m47CGZeJL._AC_UL480_FMwebp_QL65_.jpg', 95, 2),
('Honey - 250g', 'Natural wild honey.', 'https://m.media-amazon.com/images/I/610k-UsImNL._AC_UL480_FMwebp_QL65_.jpg', 160, 5),
('Jam - Mixed Fruit', 'Fruity breakfast jam.', 'https://m.media-amazon.com/images/I/51FzNCA3ioL._AC_UL480_FMwebp_QL65_.jpg', 85, 1),
('Pickle - Mango', 'Spicy mango pickle.', 'https://m.media-amazon.com/images/I/41pO4s9IJUL._AC_UL480_FMwebp_QL65_.jpg', 60, 4),
('Noodles - Instant', 'Spicy instant noodles.', 'https://m.media-amazon.com/images/I/71KCPBacK1L._AC_UL480_FMwebp_QL65_.jpg', 25, 3),
('Cereal - Corn Flakes', 'Crunchy breakfast cereal.', 'https://m.media-amazon.com/images/I/81SDdn2l4HL._AC_UL480_FMwebp_QL65_.jpg', 120, 2);






