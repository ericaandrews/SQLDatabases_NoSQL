/* TASK 01 */

/*
Show the 'cl_name_first', 'cl_name_last', and 'cl_phone'. 
Skip all who do not have a value for the 'cl_phone'. 
The display should be sorted by the 'cl_id'. 
This task assumes you have a table created called 'vt_clients' with data similar to the output. 
*/

select
    -> cl_name_first, cl_name_last, cl_phone
    -> from vt_clients
    -> WHERE cl_phone IS NOT NULL
    -> ORDER BY cl_id;
+---------------+--------------+--------------+
| cl_name_first | cl_name_last | cl_phone     |
+---------------+--------------+--------------+
| James         | Carter       | 510.258.4546 |
| Jack          | Dalrymple    | 701.328.2725 |
| Coleman       | Hawkins      | 937.258.5645 |
| Theo          | Monk         | 212.582.6245 |
| Wilson        | Pickett      | 212.584.9871 |
| Stanley       | Turrentine   | 619.231.1515 |
| NULL          | Biederbecke  | 217.239.6945 |
| NULL          | Biederbecke  | 415.239.6945 |
| Sue           | Biederbecke  | 217.239.6875 |
| Sam           | Biederbecke  | 415.239.6875 |
| Dave          | Brubeck      | 258.257.2727 |
+---------------+--------------+--------------+
11 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 02 */

/*
Display the 'srv_id' of any with a charge of 75 or more. 
Display each 'srv_id' only once. 
This task assumes you have a table created called 'vt_exam_details' with data similar to the output. 
*/

select DISTINCT
    -> srv_id
    -> from vt_exam_details
    -> WHERE ex_fee >= 75;
+--------+
| srv_id |
+--------+
|    105 |
|    602 |
|    523 |
|    524 |
|    108 |
|    615 |
|    461 |
|    603 |
|    110 |
|    605 |
|    604 |
|    625 |
|    106 |
+--------+
13 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 03 */

/*
Display the 'cl_id' for those with one or more reptiles ('snake', 'chelonian', 'crocodilian', 'lizard', 'bird', 'turtle').
Display the 'cl_id' and the 'an_type'. Sort by the 'cl_id'. 
This task assumes you have a table created called 'vt_animals' with data similar to the output. 
*/

select
    -> cl_id, an_type
    -> from vt_animals
    -> WHERE an_type in('snake', 'chelonian', 'crocodilian', 'lizard', 'bird', 'turtle')
    -> ORDER BY cl_id;
+-------+---------+
| cl_id | an_type |
+-------+---------+
|   411 | lizard  |
|  1852 | snake   |
|  3560 | bird    |
|  3560 | bird    |
|  3560 | bird    |
|  3560 | bird    |
|  3560 | bird    |
|  3561 | turtle  |
|  3561 | lizard  |
|  3561 | snake   |
|  5699 | turtle  |
|  7152 | lizard  |
|  7152 | lizard  |
+-------+---------+
13 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 04 */

/*
We want to see the following for each 'cat' and 'dog': 'cl_id', 'an_id', 'an_type' and 'an_name'. 
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

/* TASK 05 */


/*
Display the 'ex_id', 'ex_date', 'srv_id' and 'ex_fee' for each rodent ('hamster', 'capybara', 'porcupine', 'dormouse'). 
Order the rows by the 'ex_id' and 'srv_id'. 
This task assumes you have a table created called 'vt_exam_details', 'vt_exam_headers', and 'vt_animals' with data similar to the output. 
*/

select 
    -> vt_exam_details.ex_id,
    -> vt_exam_headers.ex_date,
    -> vt_exam_details.srv_id, 
    -> vt_exam_details.ex_fee
    -> from vt_exam_details
    -> inner join vt_exam_headers on vt_exam_details.ex_id = vt_exam_headers.ex_id
    -> inner join vt_animals on vt_exam_headers.an_id = vt_animals.an_id
    -> WHERE vt_animals.an_type in('hamster', 'capybara', 'porcupine', 'dormouse')
    -> ORDER BY ex_id, srv_id;
+-------+------------+--------+--------+
| ex_id | ex_date    | srv_id | ex_fee |
+-------+------------+--------+--------+
|  2389 | 2015-05-20 |    110 |  50.00 |
|  2389 | 2015-05-20 |    523 |  60.00 |
|  2400 | 2015-06-02 |    461 | 275.00 |
|  3105 | 2015-10-10 |    110 | 150.00 |
|  3105 | 2015-10-10 |    523 |  50.50 |
|  3321 | 2016-02-17 |    748 |   0.00 |
|  3322 | 2016-02-10 |    748 |  29.50 |
|  3323 | 2016-02-25 |    524 |  20.00 |
|  3323 | 2016-02-25 |    687 |  45.00 |
|  3393 | 2015-12-23 |    748 |  29.50 |
|  3393 | 2015-12-23 |    749 |   0.00 |
|  3486 | 2015-12-31 |    461 | 275.00 |
|  4103 | 2016-01-08 |    461 | 275.00 |
|  4203 | 2015-08-03 |    524 |  20.00 |
|  4233 | 2015-09-03 |    524 |  20.00 |
|  4243 | 2015-06-08 |    461 | 275.00 |
|  4255 | 2015-07-08 |    461 | 275.00 |
+-------+------------+--------+--------+
17 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 06 */

/*
Show the 'cl_id', ex_id', 'ex_date', 'srv_id', and the 'ex_fee' for 'ex_fee' is less than 25 or more than 200. 
Order by 'ex_date' and 'srv_id'. 
This task assumes you have a table created called 'vt_exam_details', 'vt_exam_headers', and 'vt_animals' with data similar to the output.
*/

select 
    -> vt_animals.cl_id,
    -> vt_exam_details.ex_id,
    -> vt_exam_headers.ex_date,
    -> vt_exam_details.srv_id, 
    -> vt_exam_details.ex_fee
    -> from vt_exam_details
    -> inner join vt_exam_headers on vt_exam_details.ex_id = vt_exam_headers.ex_id
    -> inner join vt_animals on vt_exam_headers.an_id = vt_animals.an_id
    -> WHERE ex_fee < 25 
    -> OR ex_fee > 200
    -> ORDER BY ex_date, srv_id;
+-------+-------+------------+--------+--------+
| cl_id | ex_id | ex_date    | srv_id | ex_fee |
+-------+-------+------------+--------+--------+
|  3560 |  2400 | 2015-06-02 |    461 | 275.00 |
|  3423 |  4243 | 2015-06-08 |    461 | 275.00 |
|  3423 |  4255 | 2015-07-08 |    461 | 275.00 |
|  5698 |  4612 | 2015-07-23 |    602 | 222.00 |
|  3423 |  4203 | 2015-08-03 |    524 |  20.00 |
|  5699 |  4514 | 2015-08-10 |    112 |  15.00 |
|  3423 |  4233 | 2015-09-03 |    524 |  20.00 |
|  3561 |  3202 | 2015-10-03 |    341 |  20.00 |
|  7152 |  3010 | 2015-10-22 |    605 | 535.00 |
|  1825 |  3552 | 2015-11-10 |    308 |   2.25 |
|  1825 |  3413 | 2015-12-01 |    308 |   5.00 |
|  1825 |  3612 | 2015-12-23 |    602 | 222.00 |
|  3423 |  3393 | 2015-12-23 |    749 |   0.00 |
|  6426 |  3392 | 2015-12-26 |    400 |  21.00 |
|  3561 |  3411 | 2015-12-29 |    341 |  20.00 |
|  3561 |  3412 | 2015-12-30 |    341 |  20.00 |
|  3423 |  3486 | 2015-12-31 |    461 | 275.00 |
|  3423 |  4103 | 2016-01-08 |    461 | 275.00 |
|  3423 |  3321 | 2016-02-17 |    748 |   0.00 |
|  3423 |  3323 | 2016-02-25 |    524 |  20.00 |
+-------+-------+------------+--------+--------+
20 rows in set (0.01 sec)
