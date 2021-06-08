\connect mypostgraphile;
create schema mygraphile;

/*Create user table in mygraphile schema*/
CREATE TABLE mygraphile.user (
    id SERIAL PRIMARY KEY,
    username VARCHAR (255) NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE mygraphile.user IS
'Forum users.';

/*Create post table in mygraphile schema*/
CREATE TABLE mygraphile.post (
    id SERIAL PRIMARY KEY,
    title VARCHAR (255) NOT NULL,
    body TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author_id INTEGER NOT NULL REFERENCES mygraphile.user(id)
);

COMMENT ON TABLE mygraphile.post IS
'Forum posts written by a user.';

/*Create store table in mygraphile schema*/
CREATE TABLE mygraphile.store (
    id SERIAL PRIMARY KEY,
    storename VARCHAR (255) NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE mygraphile.store IS
'List of stores.';

/*Create product table in mygraphile schema*/
CREATE TABLE mygraphile.product (
    id SERIAL PRIMARY KEY,
    productname VARCHAR (255) NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE mygraphile.product IS
'List of products.';

/*Create brand table in mygraphile schema*/
CREATE TABLE mygraphile.brand (
    id SERIAL PRIMARY KEY,
    brandname VARCHAR (255) NOT NULL,
    price NUMERIC(5,2),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    product_id INTEGER NOT NULL REFERENCES mygraphile.product(id)
);

COMMENT ON TABLE mygraphile.brand IS
'List of brands.';

/*Create brand table in mygraphile schema*/
CREATE TABLE mygraphile.sale (
    id SERIAL PRIMARY KEY,
    quantity SMALLINT NOT NULL CHECK (quantity > 0),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    store_id INTEGER NOT NULL REFERENCES mygraphile.store(id),
    brand_id INTEGER NOT NULL REFERENCES mygraphile.brand(id)
);

COMMENT ON TABLE mygraphile.sale IS
'Record of sales.';