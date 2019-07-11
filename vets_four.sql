/* TASK 01 */

/*
Display the following: 'cl_id', 'cl_name_last', 'an_id', 'an_type', and 'an_name'. 
This task assumes you have a table created called 'vt_animals' with data similar to the output.
*/

 select
    -> vt_animals.cl_id, 
    -> vt_clients.cl_name_last,
    -> vt_animals.an_id,
    -> vt_animals.an_type,
    -> vt_animals.an_name
    -> from vt_animals
    -> inner join vt_clients on vt_animals.cl_id = vt_clients.cl_id;
+-------+--------------+-------+-----------+-----------------+
| cl_id | cl_name_last | an_id | an_type   | an_name         |
+-------+--------------+-------+-----------+-----------------+
|  3560 | Monk         | 10002 | cat       | Gutsy           |
|  3560 | Monk         | 11015 | bird      | Kenny           |
|  3560 | Monk         | 11025 | bird      | NULL            |
|  3560 | Monk         | 11028 | bird      | NULL            |
|  3560 | Monk         | 11029 | bird      | NULL            |
|  3560 | Monk         | 12035 | bird      | Mr Peanut       |
|  3560 | Monk         | 12038 | porcupine | Gutsy           |
|  3561 | Pickett      | 15001 | turtle    | Big Mike        |
|  5699 | Biederbecke  | 15002 | turtle    | George          |
|   411 | Carter       | 15165 | dog       | Burgess         |
|   411 | Carter       | 15401 | lizard    | Pinkie          |
|  3423 | Hawkins      | 16002 | porcupine | Fritz           |
|  1825 | Harris       | 16003 | cat       | Ursula          |
|  1825 | Harris       | 16043 | dog       | Ursula          |
|  1825 | Harris       | 16044 | dog       | Triton          |
|  5699 | Biederbecke  | 17002 | porcupine | Fritzchen       |
|  3561 | Pickett      | 17025 | lizard    | 25              |
|  7152 | Brubeck      | 17026 | lizard    | 3P#_26          |
|  7152 | Brubeck      | 17027 | lizard    | 3P#_25          |
|  6426 | Hawkins      | 19845 | dog       | Pinkie          |
|   411 | Carter       | 21001 | hedgehog  | Yoggie          |
|  1825 | Harris       | 21002 | hedgehog  | Edger           |
|  6426 | Hawkins      | 21003 | dog       | Calvin Coolidge |
|  3561 | Pickett      | 21004 | snake     | Gutsy           |
|  3423 | Hawkins      | 21005 | dormouse  | Koshka          |
|  3423 | Hawkins      | 21006 | hamster   | Koshka          |
|  1852 | Dalrymple    | 21007 | snake     | Pop 22          |
|  5689 | Biederbecke  | 21205 | dog       | Manfried        |
|  4087 | Turrentine   | 21305 | dog       | Spot            |
|  4087 | Turrentine   | 21306 | dog       | Shadow          |
|  4087 | Turrentine   | 21307 | dog       | Buddy           |
|  4087 | Turrentine   | 21314 | cat       | Adalwine        |
|  4534 | Montgomery   | 21315 | cat       | Baldric         |
|  5698 | Biederbecke  | 21316 | cat       | Etta            |
|  5698 | Biederbecke  | 21317 | cat       | Manfried        |
|  5698 | Biederbecke  | 21318 | cat       | Waldrom         |
|  1852 | Dalrymple    | 21320 | olinguito | Morris          |
|  1852 | Dalrymple    | 21321 | olinguito | Morton          |
+-------+--------------+-------+-----------+-----------------+
38 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 02 */

/*
Display 'an_id', 'an_type', 'an_name', 'ex_id', the year for 'ex_date', and 'srv_id'. 
This task assumes you have a table created called 'vt_animals', 'vt_exam_details', 
and 'vt_exam_headers' with data similar to the output.
*/

select
    -> vt_animals.an_id,
    -> vt_animals.an_type,
    -> vt_animals.an_name,
    -> vt_exam_details.ex_id,
    -> YEAR(vt_exam_headers.ex_date),
    -> vt_exam_details.srv_id
    -> from vt_animals
    -> inner join vt_exam_headers on vt_animals.an_id = vt_exam_headers.an_id
    -> inner join vt_exam_details on vt_exam_headers.ex_id = vt_exam_details.ex_id;
+-------+-----------+-----------------+-------+-------------------------------+--------+
| an_id | an_type   | an_name         | ex_id | YEAR(vt_exam_headers.ex_date) | srv_id |
+-------+-----------+-----------------+-------+-------------------------------+--------+
| 21306 | dog       | Shadow          |  2228 |                          2015 |    398 |
| 21307 | dog       | Buddy           |  2205 |                          2015 |    105 |
| 21307 | dog       | Buddy           |  2205 |                          2015 |    101 |
| 21307 | dog       | Buddy           |  2205 |                          2015 |    602 |
| 21320 | olinguito | Morris          |  2289 |                          2015 |    523 |
| 21320 | olinguito | Morris          |  2290 |                          2015 |    524 |
| 21320 | olinguito | Morris          |  2290 |                          2015 |    613 |
| 21316 | cat       | Etta            |  2300 |                          2015 |    108 |
| 10002 | cat       | Gutsy           |  2352 |                          2015 |    108 |
| 10002 | cat       | Gutsy           |  2352 |                          2015 |    615 |
| 21006 | hamster   | Koshka          |  2389 |                          2015 |    523 |
| 21006 | hamster   | Koshka          |  2389 |                          2015 |    110 |
| 12038 | porcupine | Gutsy           |  2400 |                          2015 |    461 |
| 11028 | bird      | NULL            |  3002 |                          2015 |    106 |
| 11029 | bird      | NULL            |  3003 |                          2015 |    106 |
| 16002 | porcupine | Fritz           |  4243 |                          2015 |    461 |
| 16002 | porcupine | Fritz           |  4255 |                          2015 |    461 |
| 21317 | cat       | Manfried        |  4612 |                          2015 |    602 |
| 21317 | cat       | Manfried        |  4612 |                          2015 |    603 |
| 21317 | cat       | Manfried        |  4612 |                          2015 |    606 |
| 21317 | cat       | Manfried        |  4612 |                          2015 |    612 |
| 15002 | turtle    | George          |  4514 |                          2015 |    104 |
| 15002 | turtle    | George          |  4514 |                          2015 |    112 |
| 15002 | turtle    | George          |  4514 |                          2015 |    113 |
| 16002 | porcupine | Fritz           |  4203 |                          2015 |    524 |
| 21001 | hedgehog  | Yoggie          |  4282 |                          2015 |    523 |
| 21001 | hedgehog  | Yoggie          |  4282 |                          2015 |    110 |
| 21001 | hedgehog  | Yoggie          |  4282 |                          2015 |    615 |
| 16002 | porcupine | Fritz           |  4233 |                          2015 |    524 |
| 17002 | porcupine | Fritzchen       |  3105 |                          2015 |    523 |
| 17002 | porcupine | Fritzchen       |  3105 |                          2015 |    110 |
| 17026 | lizard    | 3P#_26          |  3010 |                          2015 |    104 |
| 17026 | lizard    | 3P#_26          |  3010 |                          2015 |    605 |
| 17027 | lizard    | 3P#_25          |  3001 |                          2015 |    104 |
| 17025 | lizard    | 25              |  3202 |                          2015 |    341 |
| 15401 | lizard    | Pinkie          |  3513 |                          2015 |    104 |
| 15401 | lizard    | Pinkie          |  3513 |                          2015 |    110 |
| 16003 | cat       | Ursula          |  3552 |                          2015 |    308 |
| 16003 | cat       | Ursula          |  3552 |                          2015 |    615 |
| 17027 | lizard    | 3P#_25          |  3304 |                          2015 |    341 |
| 17027 | lizard    | 3P#_25          |  3304 |                          2015 |    113 |
| 17025 | lizard    | 25              |  3306 |                          2015 |    104 |
| 17025 | lizard    | 25              |  3306 |                          2015 |    687 |
| 17025 | lizard    | 25              |  3306 |                          2015 |    112 |
| 19845 | dog       | Pinkie          |  3390 |                          2015 |    105 |
| 19845 | dog       | Pinkie          |  3390 |                          2015 |    101 |
| 17025 | lizard    | 25              |  3411 |                          2015 |    341 |
| 17025 | lizard    | 25              |  3412 |                          2015 |    341 |
| 16003 | cat       | Ursula          |  3413 |                          2015 |    308 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    602 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    603 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    604 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    625 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    606 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    607 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    612 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    613 |
| 16003 | cat       | Ursula          |  3612 |                          2015 |    615 |
| 21003 | dog       | Calvin Coolidge |  3392 |                          2015 |    398 |
| 21003 | dog       | Calvin Coolidge |  3392 |                          2015 |    400 |
| 21003 | dog       | Calvin Coolidge |  3392 |                          2015 |    113 |
| 16002 | porcupine | Fritz           |  3393 |                          2015 |    748 |
| 16002 | porcupine | Fritz           |  3393 |                          2015 |    749 |
| 17027 | lizard    | 3P#_25          |  3409 |                          2015 |    104 |
| 21005 | dormouse  | Koshka          |  3486 |                          2015 |    461 |
| 15001 | turtle    | Big Mike        |  4101 |                          2016 |    104 |
| 15001 | turtle    | Big Mike        |  4101 |                          2016 |    615 |
| 15002 | turtle    | George          |  4102 |                          2016 |    104 |
| 16002 | porcupine | Fritz           |  4103 |                          2016 |    461 |
| 12035 | bird      | Mr Peanut       |  3104 |                          2016 |    106 |
| 12035 | bird      | Mr Peanut       |  3104 |                          2016 |    613 |
| 17026 | lizard    | 3P#_26          |  3325 |                          2016 |    104 |
| 17026 | lizard    | 3P#_26          |  3325 |                          2016 |    604 |
| 16003 | cat       | Ursula          |  3420 |                          2016 |    108 |
| 15001 | turtle    | Big Mike        |  3494 |                          2016 |    104 |
| 15001 | turtle    | Big Mike        |  3288 |                          2016 |    104 |
| 15001 | turtle    | Big Mike        |  3288 |                          2016 |    112 |
| 15001 | turtle    | Big Mike        |  3288 |                          2016 |    687 |
| 16002 | porcupine | Fritz           |  3322 |                          2016 |    748 |
| 16002 | porcupine | Fritz           |  3321 |                          2016 |    748 |
| 17025 | lizard    | 25              |  3324 |                          2016 |    104 |
| 17025 | lizard    | 25              |  3324 |                          2016 |    687 |
| 17025 | lizard    | 25              |  3324 |                          2016 |    112 |
| 16002 | porcupine | Fritz           |  3323 |                          2016 |    524 |
| 16002 | porcupine | Fritz           |  3323 |                          2016 |    687 |
+-------+-----------+-----------------+-------+-------------------------------+--------+
85 rows in set (0.01 sec)

******************************************************************************************************************************

/* TASK 03 */

/*
Display the 'cl_id' and 'cl_name_last' for each with 'an_type' not null 
and not a reptile('snake', 'chelonian', 'crocodilian', 'lizard'). 
This task assumes you have a table created called 'vt_animals' 
and 'vt_clients' with data similar to the output. 
*/

select 
    -> cl_id, 
    -> cl_name_last
    -> from vt_clients
    -> where cl_id in ( 
    ->     select cl_id 
    ->     from vt_animals 
    ->     WHERE an_type IS NOT NULL
    ->     AND an_type NOT IN('snake', 'chelonian', 'crocodilian', 'lizard')
    -> );
+-------+--------------+
| cl_id | cl_name_last |
+-------+--------------+
|   411 | Carter       |
|  1825 | Harris       |
|  1852 | Dalrymple    |
|  3423 | Hawkins      |
|  3560 | Monk         |
|  3561 | Pickett      |
|  4087 | Turrentine   |
|  4534 | Montgomery   |
|  5689 | Biederbecke  |
|  5698 | Biederbecke  |
|  5699 | Biederbecke  |
|  6426 | Hawkins      |
+-------+--------------+
12 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 04 */

/*
Display the 'cl_id' and 'cl_name_last' for each who does not have an 'an_type'. 
This task assumes you have a table created called 'vt_animals' 
and 'vt_clients' with data similar to the output. 
*/

select 
    -> cl_id, 
    -> cl_name_last
    -> from vt_clients
    -> where cl_id in ( 
    ->     select cl_id 
    ->     from vt_animals 
    ->     WHERE an_type IS NULL
    -> );
Empty set (0.00 sec)

******************************************************************************************************************************

/* TASK 05 */

/*
Display data about 'srv_id', 'srv_list_price', 'srv_desc', 
and 'srv_type' that have 'srv_list_price' of 100 or more and have not been used on 'ex_desc'. 
This task assumes you have a table created called 'vt_services' 
and 'vt_exam_details' with data similar to the output. 
*/

select
    -> srv_id,
    -> srv_list_price,
    -> srv_desc,
    -> srv_type
    -> from vt_services
    -> where srv_id in (
    ->     select srv_id
    ->     from vt_exam_details
    ->     WHERE srv_list_price >= 100
    ->     AND srv_desc != ex_desc
    -> );
+--------+----------------+--------------------------------------------+-----------+
| srv_id | srv_list_price | srv_desc                                   | srv_type  |
+--------+----------------+--------------------------------------------+-----------+
|    602 |         222.00 | General Anethesia 1 hour                   | treatment |
|    110 |         100.00 | Dental Cleaning-Other                      | treatment |
|    461 |         275.00 | Feline Behaviour Modification Consultation | treatment |
|    605 |         535.00 | Tooth extraction Level 1                   | treatment |
|    604 |         109.00 | Dental Scaling                             | treatment |
|    625 |         155.00 | CBC and scan                               | treatment |
+--------+----------------+--------------------------------------------+-----------+
6 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 06 */

/*
Display the 'cl_id' and 'cl_name_last' for each who have 'an_type' for a 'dog' 
and a reptile('snake', 'chelonian', 'crocodilian', 'lizard').
This task assumes you have a table created called 'vt_clients' 
and 'vt_animals' with data similar to the output. 
*/

select 
    -> cl_id, 
    -> cl_name_last
    -> from vt_clients
    -> where cl_id in ( 
    ->     select cl_id 
    ->     from vt_animals 
    ->     WHERE an_type IN('snake', 'chelonian', 'crocodilian', 'lizard') 
    ->     AND an_type IN('dog')
    -> );
Empty set (0.00 sec)

******************************************************************************************************************************

/* TASK 07 */

/*
Display 'cl_id' and 'cl_name_last' for each with a 'dog' 
and not a reptile('snake', 'chelonian', 'crocodilian', 'lizard').
This task assumes you have a table created called 'vt_clients' 
and 'vt_animals' with data similar to the output. 
*/

select 
    -> cl_id, 
    -> cl_name_last
    -> from vt_clients
    -> where cl_id in ( 
    ->     select cl_id 
    ->     from vt_animals 
    ->     WHERE an_type NOT IN('snake', 'chelonian', 'crocodilian', 'lizard') 
    ->     AND an_type IN('dog')
    -> );
+-------+--------------+
| cl_id | cl_name_last |
+-------+--------------+
|   411 | Carter       |
|  1825 | Harris       |
|  4087 | Turrentine   |
|  5689 | Biederbecke  |
|  6426 | Hawkins      |
+-------+--------------+
5 rows in set (0.00 sec)
