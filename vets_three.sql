/* TASK 01 */

/*
We want to see the follow data for each 'cat' and 'dog': 
'cl_id', 'an_id', 'an_type', 'an_name'.
This task assumes you have a table created called 'vt_animals' with data similar to the output. 
*/

select 
    -> cl_id, an_id, an_type, an_name
    -> from vt_animals
    -> WHERE an_type in('cat', 'dog');
+-------+-------+---------+-----------------+
| cl_id | an_id | an_type | an_name         |
+-------+-------+---------+-----------------+
|  3560 | 10002 | cat     | Gutsy           |
|   411 | 15165 | dog     | Burgess         |
|  1825 | 16003 | cat     | Ursula          |
|  1825 | 16043 | dog     | Ursula          |
|  1825 | 16044 | dog     | Triton          |
|  6426 | 19845 | dog     | Pinkie          |
|  6426 | 21003 | dog     | Calvin Coolidge |
|  5689 | 21205 | dog     | Manfried        |
|  4087 | 21305 | dog     | Spot            |
|  4087 | 21306 | dog     | Shadow          |
|  4087 | 21307 | dog     | Buddy           |
|  4087 | 21314 | cat     | Adalwine        |
|  4534 | 21315 | cat     | Baldric         |
|  5698 | 21316 | cat     | Etta            |
|  5698 | 21317 | cat     | Manfried        |
|  5698 | 21318 | cat     | Waldrom         |
+-------+-------+---------+-----------------+
16 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 02 */

/*
Use a join to display the 'cl_id' and the 'cl_name_last' for each who does not have an 'an_type'. 
This task assumes you have a table created called 'vt_animals' with data similar to the output.
*/

select
    -> vt_animals.cl_id,
    -> vt_clients.cl_name_last
    -> from vt_animals
    -> inner join vt_clients on vt_animals.cl_id = vt_clients.cl_id
    -> WHERE vt_animals.an_type IS NULL;
Empty set (0.00 sec)

******************************************************************************************************************************

/* TASK 03 */

/*
Display the 'cl_id' and the 'cl_name_last' for each who has a non-rodent 
('hamster', 'capybara', 'porcupine', 'dormouse') or none for 'an_type'. 
This task assumes you have a table created called 'vt_animals' and 'vt_clients' with data similar to the output.
*/

select
    -> vt_animals.cl_id,
    -> vt_clients.cl_name_last
    -> from vt_animals
    -> inner join vt_clients on vt_animals.cl_id = vt_clients.cl_id
    -> WHERE vt_animals.an_type NOT IN('hamster', 'capybara', 'porcupine', 'dormouse')
    -> OR vt_animals.an_type IS NULL;
+-------+--------------+
| cl_id | cl_name_last |
+-------+--------------+
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3561 | Pickett      |
|  5699 | Biederbecke  |
|   411 | Carter       |
|   411 | Carter       |
|  1825 | Harris       |
|  1825 | Harris       |
|  1825 | Harris       |
|  3561 | Pickett      |
|  7152 | Brubeck      |
|  7152 | Brubeck      |
|  6426 | Hawkins      |
|   411 | Carter       |
|  1825 | Harris       |
|  6426 | Hawkins      |
|  3561 | Pickett      |
|  1852 | Dalrymple    |
|  5689 | Biederbecke  |
|  4087 | Turrentine   |
|  4087 | Turrentine   |
|  4087 | Turrentine   |
|  4087 | Turrentine   |
|  4534 | Montgomery   |
|  5698 | Biederbecke  |
|  5698 | Biederbecke  |
|  5698 | Biederbecke  |
|  1852 | Dalrymple    |
|  1852 | Dalrymple    |
+-------+--------------+
33 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 04 */

/*
Show the 'cl_id', 'cl_name_last', 'an_id', 'an_name', 
and 'an_type' for every 'ex_date' that is none. 
Sort by the 'cl_id' and the 'an_id'. 
This task assumes you have a table created called 'vt_animals', 'vt_clients', 
and 'vt_exam_headers' with data similar to the output.
*/

select
    -> vt_animals.cl_id,
    -> vt_clients.cl_name_last,
    -> vt_exam_headers.an_id,
    -> vt_animals.an_name,
    -> vt_animals.an_type
    -> from vt_animals
    -> inner join vt_clients on vt_animals.cl_id = vt_clients.cl_id
    -> inner join vt_exam_headers on vt_animals.an_id = vt_exam_headers.an_id
    -> WHERE vt_exam_headers.ex_date IS NULL
    -> ORDER BY vt_animals.cl_id, vt_exam_headers.an_id;
Empty set (0.01 sec)

******************************************************************************************************************************

/* TASK 05 */

/*
Show the 'cl_id' and 'cl_name_last' for every 'an_type' that is not none. 
This task assumes you have a table created called 'vt_animals' and 'vt_clients' with data similar to the output.
*/

select
    -> vt_animals.cl_id,
    -> vt_clients.cl_name_last
    -> from vt_animals
    -> inner join vt_clients on vt_animals.cl_id = vt_clients.cl_id
    -> WHERE vt_animals.an_type IS NOT NULL;
+-------+--------------+
| cl_id | cl_name_last |
+-------+--------------+
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3560 | Monk         |
|  3561 | Pickett      |
|  5699 | Biederbecke  |
|   411 | Carter       |
|   411 | Carter       |
|  3423 | Hawkins      |
|  1825 | Harris       |
|  1825 | Harris       |
|  1825 | Harris       |
|  5699 | Biederbecke  |
|  3561 | Pickett      |
|  7152 | Brubeck      |
|  7152 | Brubeck      |
|  6426 | Hawkins      |
|   411 | Carter       |
|  1825 | Harris       |
|  6426 | Hawkins      |
|  3561 | Pickett      |
|  3423 | Hawkins      |
|  3423 | Hawkins      |
|  1852 | Dalrymple    |
|  5689 | Biederbecke  |
|  4087 | Turrentine   |
|  4087 | Turrentine   |
|  4087 | Turrentine   |
|  4087 | Turrentine   |
|  4534 | Montgomery   |
|  5698 | Biederbecke  |
|  5698 | Biederbecke  |
|  5698 | Biederbecke  |
|  1852 | Dalrymple    |
|  1852 | Dalrymple    |
+-------+--------------+
38 rows in set (0.01 sec)

******************************************************************************************************************************

/* TASK 06 */

/*
Display the 'cl_id', 'cl_name_last', 'an_id', 'an_name', 
and 'an_dob' for all 'cl_state' in 'NY' and 'MA' 
but do not display for any 'an_type' not in 'dog', 'cat', and 'bird'. 
This task assumes you have a table created called 'vt_animals' and 'vt_clients' with data similar to the output.
*/

select
    -> vt_animals.cl_id,
    -> vt_clients.cl_name_last,
    -> vt_animals.an_id,
    -> vt_animals.an_name,
    -> vt_animals.an_dob
    -> from vt_animals
    -> inner join vt_clients on vt_animals.cl_id = vt_clients.cl_id
    -> WHERE vt_clients.cl_state IN ('NY', 'MA')
    -> AND vt_animals.an_type NOT IN ('dog', 'cat', 'bird');
+-------+--------------+-------+----------+------------+
| cl_id | cl_name_last | an_id | an_name  | an_dob     |
+-------+--------------+-------+----------+------------+
|  3560 | Monk         | 12038 | Gutsy    | 2012-04-29 |
|  3561 | Pickett      | 15001 | Big Mike | 2010-02-02 |
|  3561 | Pickett      | 17025 | 25       | 2013-01-10 |
|  7152 | Brubeck      | 17026 | 3P#_26   | 2010-01-10 |
|  7152 | Brubeck      | 17027 | 3P#_25   | 2010-01-10 |
|  3561 | Pickett      | 21004 | Gutsy    | 2011-05-12 |
+-------+--------------+-------+----------+------------+
6 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 07 */

/*
Display data for 'srv_id', 'srv_list_price', 'srv_desc', 
and 'srv_type' for 'srv_list_price' of 100 or more that have not been used for 'ex_fee'. 
This task assumes you have a table created called 'vt_services' and 'vt_exam_details' with data similar to the output.
*/

select
    ->  vt_services.srv_id, 
    ->  vt_services.srv_list_price,
    ->  vt_services.srv_desc,
    ->  vt_services.srv_type
    ->  from vt_services
    ->  inner join vt_exam_details on vt_services.srv_id = vt_exam_details.srv_id
    ->  WHERE vt_services.srv_list_price >= 100
    ->  AND vt_exam_details.ex_fee < 100;
+--------+----------------+-----------------------+-----------+
| srv_id | srv_list_price | srv_desc              | srv_type  |
+--------+----------------+-----------------------+-----------+
|    110 |         100.00 | Dental Cleaning-Other | treatment |
|    110 |         100.00 | Dental Cleaning-Other | treatment |
|    110 |         100.00 | Dental Cleaning-Other | treatment |
|    604 |         109.00 | Dental Scaling        | treatment |
+--------+----------------+-----------------------+-----------+
4 rows in set (0.00 sec)

  
