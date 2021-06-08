\connect mypostgraphile;

/*Create some dummy users*/
INSERT INTO mygraphile.user (username) VALUES
('Benjie'),
('Singingwolfboy'),
('Lexius');

/*Create some dummy posts*/
INSERT INTO mygraphile.post (title, body, author_id) VALUES
('First post example', 'First post body', 1),
('Second post example', 'Second post body', 2),
('Third post example', 'Third post body', 3);

/*Create some dummy stores*/
INSERT INTO mygraphile.store (storename) VALUES
('Store A'),
('Store B'),
('Store C');

/*Create some dummy products*/
INSERT INTO mygraphile.product (productname) VALUES
('Product A'),
('Product B'),
('Product C');

/*Create some dummy brands*/
INSERT INTO mygraphile.brand (brandname, price, product_id) VALUES
('Brand A', 100.50, 1),
('Brand B', 200.50, 2),
('Brand C', 300.50, 1),
('Brand D', 400.50, 2),
('Brand E', 500.50, 3),
('Brand F', 600.00, 3),
('Brand G', 700.50, 1);

/*Create some dummy sales*/
INSERT INTO mygraphile.sale (quantity, store_id, brand_id) VALUES
(5, 1, 1),
(4, 2, 2),
(3, 3, 3),
(2, 2, 4),
(1, 3, 7),
(2, 1, 6),
(3, 2, 5),
(4, 3, 1),
(9, 2, 3),
(7, 1, 4);