/* TASK 01 */

/*
Write CREATE TABLE statements to create the following table titles: 
'bk_books'
'bk_customers' 
'bk_order_details' 
'bk_order_headers'

Choose appropriate data types for each column and
create table statements including primary key constraints for each and 
foreign key constraints for tables that have foreign keys. 
This task assumes you have data similar to the output.
*/

CREATE TABLE bk_books (
    book_id int,
    title varchar(255),
    year_publd int,
    isbn int,
    page_count int,
    list_price int,
    PRIMARY KEY (book_id)
);

CREATE TABLE bk_customers (
    cust_id int,
    cust_name_last varchar(255),
    cust_name_first varchar(255),
    cust_state varchar(255),
    cust_postal_code int,
    cust_acct_opened date,
    PRIMARY KEY (cust_id)	
);

CREATE TABLE bk_order_details (
    order_id int,
    order_line int,
    book_id int,
    quantity int,
    order_price int,
    PRIMARY KEY (order_id, order_line),
    FOREIGN KEY (order_id, book_id)
    REFERENCES OrderAndBookId(order_id, book_id)
);

CREATE TABLE bk_order_headers (
    order_id int,
    order_date date,
    cust_id int,
    PRIMARY KEY (order_id),
    FOREIGN KEY (cust_id) 
    REFERENCES OrderId(cust_id)
);

******************************************************************************************************************************

/* TASK 02 */

/*
Write a minimum of 3 insert statements for each table created in the previous task. 
Be careful to maintain referential integrity when choosing rows. 
This task assumes you have data similar to the output.
*/

INSERT INTO bk_books (book_id, title, year_publd, isbn, page_count, list_price)values (1401, 'Visual Studio Tools for Office', 2006, 321334884, 976, 55);
INSERT INTO bk_books (book_id, title, year_publd, isbn, page_count, list_price)values (1305, 'Journeys Through Flatland', 1958, 387515357, 100, 10);
INSERT INTO bk_books (book_id, title, year_publd, isbn, page_count, list_price)values (1101, 'Programming SQL Server with VB.NET', 2002, 735615357, 300, 60);


INSERT INTO bk_customers (cust_id, cust_name_last, cust_name_first, cust_state, cust_postal_code, cust_acct_opened)values (226656, 'Randall', 'Randell', 'NJ', 8251, 2012-08-08);
INSERT INTO bk_customers (cust_id, cust_name_last, cust_name_first, cust_state, cust_postal_code, cust_acct_opened)values (259906, 'Capybara', 'Wile E.', 'CA', 94132, 2014-08-05);
INSERT INTO bk_customers (cust_id, cust_name_last, cust_name_first, cust_state, cust_postal_code, cust_acct_opened)values (221297, 'Dodgson', 'Charles', 'MI', 49327, 2001-05-06);


INSERT INTO bk_order_details (order_id, order_line, book_id, quantity, order_price)values (12900, 1401, 1, 20, 50);
INSERT INTO bk_order_details (order_id, order_line, book_id, quantity, order_price)values (12855, 1142, 2, 5, 39);
INSERT INTO bk_order_details (order_id, order_line, book_id, quantity, order_price)values (12961, 2002, 3, 1, 39);


INSERT INTO bk_order_headers (order_id, order_date, cust_id)values (226656, 12900, 2015-01-25);
INSERT INTO bk_order_headers (order_id, order_date, cust_id)values (259906, 12901, 2015-01-26);
INSERT INTO bk_order_headers (order_id, order_date, cust_id)values (221297, 12855, 2015-01-18);

******************************************************************************************************************************

/* TASK 03 */

/*
Write a query that will display the entire contents of all of your tables. 
You will need to join all tables and display all columns. 
This task assumes you have data similar to the output.
*/

select
bk_customers.cust_id,
bk_order_details.order_id,
bk_books.book_id, 
bk_books.title, 
bk_books.year_publd, 
bk_books.isbn, 
bk_books.page_count, 
bk_books.list_price, 
bk_order_details.order_line,
bk_order_details.quantity,
bk_order_details.order_price, 
bk_order_headers.order_date,
bk_customers.cust_name_last, 
bk_customers.cust_name_first, 
bk_customers.cust_state, 
bk_customers.cust_postal_code, 
bk_customers.cust_acct_opened 
from bk_books
inner join bk_order_details on bk_books.book_id = bk_order_details.book_id
inner join bk_order_headers on bk_books.book_id = bk_order_headers.cust_id
inner join bk_customers on bk_books.book_id = bk_customers.cust_id;
