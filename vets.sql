/* TASK 01 */

/*
For each row in the 'vt_staff' table, display 'stf_name_first', 'stf_name_last' and 'stf_job_title' This task assumes you have a table created called 'vt_staff' with data similar to the output. 
*/

select 
    -> stf_name_first, stf_name_last, stf_job_title
    -> from vt_staff;
+----------------+---------------+---------------+
| stf_name_first | stf_name_last | stf_job_title |
+----------------+---------------+---------------+
| Marcin         | Wasilewski    | vet           |
| Eliza          | Dolittle      | vet           |
| Shirley        | Horn          | clerical      |
| Bridgette      | Wilkommen     | vet           |
| Sandy          | Helfen        | vet assnt     |
| Pat            | Halvers       | kennel        |
| Brenda         | Webster       | vet assnt     |
| Rhoda          | Wabich        | vet           |
| Dexter         | Gordon        | vet assnt     |
| Sandy          | Helfen        | vet assnt     |
+----------------+---------------+---------------+
10 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 02 */

/*
Display the 'an_id' with a column alias of 'ID', the 'an_name' with a column alias of 'Name', the 'an_type' with the column alias 'Animal Type', and the 'an_dob' with a column alias of 'BirthDate'. Display the data with the oldest first. This task assumes you have a table created called 'vt_animals' with data similar to the output.
*/

select 
    -> an_id AS "ID"
    -> , an_name AS "Name"
    -> , an_type AS "Animal Type"
    -> , an_dob AS "BirthDate"
    -> from vt_animals
    -> ORDER BY an_dob;
+-------+-----------------+-------------+------------+
| ID    | Name            | Animal Type | BirthDate  |
+-------+-----------------+-------------+------------+
| 12035 | Mr Peanut       | bird        | 1995-02-28 |
| 15002 | George          | turtle      | 1998-02-02 |
| 21002 | Edger           | hedgehog    | 2002-10-02 |
| 15165 | Burgess         | dog         | 2005-11-20 |
| 19845 | Pinkie          | dog         | 2009-02-02 |
| 21001 | Yoggie          | hedgehog    | 2009-05-22 |
| 17027 | 3P#_25          | lizard      | 2010-01-10 |
| 17026 | 3P#_26          | lizard      | 2010-01-10 |
| 15001 | Big Mike        | turtle      | 2010-02-02 |
| 15401 | Pinkie          | lizard      | 2010-03-15 |
| 10002 | Gutsy           | cat         | 2010-04-15 |
| 21316 | Etta            | cat         | 2010-06-11 |
| 21007 | Pop 22          | snake       | 2010-06-12 |
| 21005 | Koshka          | dormouse    | 2011-03-06 |
| 21004 | Gutsy           | snake       | 2011-05-12 |
| 21006 | Koshka          | hamster     | 2011-06-06 |
| 21317 | Manfried        | cat         | 2011-06-11 |
| 11025 | NULL            | bird        | 2012-02-01 |
| 11015 | Kenny           | bird        | 2012-02-23 |
| 12038 | Gutsy           | porcupine   | 2012-04-29 |
| 17002 | Fritzchen       | porcupine   | 2012-06-02 |
| 21318 | Waldrom         | cat         | 2012-06-11 |
| 17025 | 25              | lizard      | 2013-01-10 |
| 16003 | Ursula          | cat         | 2013-02-06 |
| 21315 | Baldric         | cat         | 2013-06-11 |
| 21314 | Adalwine        | cat         | 2013-06-11 |
| 21321 | Morton          | olinguito   | 2014-06-03 |
| 16043 | Ursula          | dog         | 2014-06-06 |
| 16044 | Triton          | dog         | 2014-06-06 |
| 21320 | Morris          | olinguito   | 2014-06-11 |
| 21003 | Calvin Coolidge | dog         | 2014-06-18 |
| 21305 | Spot            | dog         | 2014-07-27 |
| 21306 | Shadow          | dog         | 2014-07-27 |
| 21307 | Buddy           | dog         | 2014-07-27 |
| 21205 | Manfried        | dog         | 2015-03-30 |
| 16002 | Fritz           | porcupine   | 2015-05-25 |
| 11029 | NULL            | bird        | 2015-10-01 |
| 11028 | NULL            | bird        | 2015-10-01 |
+-------+-----------------+-------------+------------+
38 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 03 */

/*
Display the 'an_type' from the 'vt_animals' table. Suppress any duplicates. This task assumes you have a table created called 'vt_animals' with data similar to the output.
*/

select DISTINCT
    -> an_type
    -> from vt_animals;
+-----------+
| an_type   |
+-----------+
| cat       |
| bird      |
| porcupine |
| turtle    |
| dog       |
| lizard    |
| hedgehog  |
| snake     |
| dormouse  |
| hamster   |
| olinguito |
+-----------+
11 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 04 */

/*
For each row in the 'vt_services' table, display the 'srv_type' and 'srv_desc'. The rows should be sorted by the 'srv_type' and 'srv_list_price'. This task assumes you have a table created called 'vt_services' with data similar to the output.
*/

select
    -> srv_type, srv_desc
    -> from vt_services
    -> ORDER BY srv_type, srv_list_price;
+--------------+--------------------------------------------+
| srv_type     | srv_desc                                   |
+--------------+--------------------------------------------+
| medicine     | Second Feline PCR                          |
| medicine     | Scaly Mite Powder                          |
| medicine     | Third Feline PCR                           |
| medicine     | Buprenex oral drops 1 ml                   |
| medicine     | Preds-liver                                |
| medicine     | Preds-chicken                              |
| medicine     | First Feline PCR                           |
| medicine     | Vitamin E- Concentrated                    |
| medicine     | Feline PCR Series                          |
| medicine     | antibiotics                                |
| office visit | Followup Exam-Reptile                      |
| office visit | Followup Exam-Small Mammal                 |
| office visit | Followup Exam-Bird                         |
| office visit | Followup Exam-Canine                       |
| office visit | Followup Exam-Feline                       |
| office visit | Routine Exam-Reptile                       |
| office visit | Routine Exam-Small Mammal                  |
| office visit | Routine Exam-Canine                        |
| office visit | Routine Exam-Feline                        |
| treatment    | Hazardous Materials Disposal               |
| treatment    | Intestinal Parasite Screen                 |
| treatment    | Tooth extraction Level 2                   |
| treatment    | Dental Cleaning-Feline                     |
| treatment    | Hospital stay- short                       |
| treatment    | Dental Cleaning-Canine                     |
| treatment    | Tooth extraction Level 3                   |
| treatment    | Routine Exam-Bird                          |
| treatment    | Feline Dental X_ray                        |
| treatment    | Dental Cleaning-Other                      |
| treatment    | Dental Scaling                             |
| treatment    | CBC and scan                               |
| treatment    | General Anethesia 1 hour                   |
| treatment    | Feline Behaviour Modification Consultation |
| treatment    | Tooth extraction Level 1                   |
+--------------+--------------------------------------------+
34 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 05 */

/*
Display the 'ex_id', the 'srv_id', and the 'ex_fee'. Order by the 'ex_id' and then by the 'ex_fee'. This task assumes you have a table created called 'vt_exam_details' with data similar to the output.
*/

select
    -> ex_id, srv_id, ex_fee
    -> from vt_exam_details
    -> ORDER BY ex_id, ex_fee;
+-------+--------+--------+
| ex_id | srv_id | ex_fee |
+-------+--------+--------+
|  2205 |    101 |  50.00 |
|  2205 |    105 |  75.00 |
|  2205 |    602 | 200.00 |
|  2228 |    398 |  30.00 |
|  2289 |    523 |  75.00 |
|  2290 |    613 |  41.00 |
|  2290 |    524 |  75.00 |
|  2300 |    108 |  75.00 |
|  2352 |    108 |  75.00 |
|  2352 |    615 |  75.00 |
|  2389 |    110 |  50.00 |
|  2389 |    523 |  60.00 |
|  2400 |    461 | 275.00 |
|  3001 |    104 |  25.00 |
|  3002 |    106 |  60.00 |
|  3003 |    106 |  60.00 |
|  3010 |    104 |  25.00 |
|  3010 |    605 | 535.00 |
|  3104 |    613 |  47.00 |
|  3104 |    106 |  75.00 |
|  3105 |    523 |  50.50 |
|  3105 |    110 | 150.00 |
|  3202 |    341 |  20.00 |
|  3288 |    112 |  25.00 |
|  3288 |    104 |  30.00 |
|  3288 |    687 |  45.00 |
|  3304 |    113 |  25.00 |
|  3304 |    341 |  25.00 |
|  3306 |    112 |  25.00 |
|  3306 |    104 |  30.00 |
|  3306 |    687 |  45.00 |
|  3321 |    748 |   0.00 |
|  3322 |    748 |  29.50 |
|  3323 |    524 |  20.00 |
|  3323 |    687 |  45.00 |
|  3324 |    112 |  25.00 |
|  3324 |    104 |  30.00 |
|  3324 |    687 |  45.00 |
|  3325 |    104 |  25.00 |
|  3325 |    604 |  59.00 |
|  3390 |    105 |  55.00 |
|  3390 |    101 |  70.00 |
|  3392 |    400 |  21.00 |
|  3392 |    398 |  30.00 |
|  3392 |    113 |  45.00 |
|  3393 |    749 |   0.00 |
|  3393 |    748 |  29.50 |
|  3409 |    104 |  25.00 |
|  3411 |    341 |  20.00 |
|  3412 |    341 |  20.00 |
|  3413 |    308 |   5.00 |
|  3420 |    108 |  80.00 |
|  3486 |    461 | 275.00 |
|  3494 |    104 |  30.00 |
|  3513 |    104 |  30.00 |
|  3513 |    110 |  75.00 |
|  3552 |    308 |   2.25 |
|  3552 |    615 |  25.25 |
|  3612 |    612 |  25.91 |
|  3612 |    606 |  40.00 |
|  3612 |    613 |  47.00 |
|  3612 |    607 |  57.00 |
|  3612 |    603 |  78.00 |
|  3612 |    615 |  78.30 |
|  3612 |    604 | 109.00 |
|  3612 |    625 | 155.00 |
|  3612 |    602 | 222.00 |
|  4101 |    104 |  60.00 |
|  4101 |    615 |  75.00 |
|  4102 |    104 |  60.00 |
|  4103 |    461 | 275.00 |
|  4203 |    524 |  20.00 |
|  4233 |    524 |  20.00 |
|  4243 |    461 | 275.00 |
|  4255 |    461 | 275.00 |
|  4282 |    615 |  25.25 |
|  4282 |    110 |  50.00 |
|  4282 |    523 |  60.00 |
|  4514 |    112 |  15.00 |
|  4514 |    113 |  25.00 |
|  4514 |    104 |  30.00 |
|  4612 |    612 |  25.91 |
|  4612 |    606 |  40.00 |
|  4612 |    603 |  78.00 |
|  4612 |    602 | 222.00 |
+-------+--------+--------+
85 rows in set (0.01 sec)

******************************************************************************************************************************

/* TASK 06 */

/*
Display the 'an_name','an_type' and 'an_dob' values from the 'vt_animals' table. Suppress any duplicates. Sort the display in the order by the 'an_type' as the first sort key and the 'an_name' as the second sort key. This task assumes you have a table created called 'vt_animals' with data similar to the output.
*/

select DISTINCT
    -> an_name, an_type, an_dob
    -> from vt_animals
    -> ORDER BY an_type, an_name;
+-----------------+-----------+------------+
| an_name         | an_type   | an_dob     |
+-----------------+-----------+------------+
| NULL            | bird      | 2012-02-01 |
| NULL            | bird      | 2015-10-01 |
| Kenny           | bird      | 2012-02-23 |
| Mr Peanut       | bird      | 1995-02-28 |
| Adalwine        | cat       | 2013-06-11 |
| Baldric         | cat       | 2013-06-11 |
| Etta            | cat       | 2010-06-11 |
| Gutsy           | cat       | 2010-04-15 |
| Manfried        | cat       | 2011-06-11 |
| Ursula          | cat       | 2013-02-06 |
| Waldrom         | cat       | 2012-06-11 |
| Buddy           | dog       | 2014-07-27 |
| Burgess         | dog       | 2005-11-20 |
| Calvin Coolidge | dog       | 2014-06-18 |
| Manfried        | dog       | 2015-03-30 |
| Pinkie          | dog       | 2009-02-02 |
| Shadow          | dog       | 2014-07-27 |
| Spot            | dog       | 2014-07-27 |
| Triton          | dog       | 2014-06-06 |
| Ursula          | dog       | 2014-06-06 |
| Koshka          | dormouse  | 2011-03-06 |
| Koshka          | hamster   | 2011-06-06 |
| Edger           | hedgehog  | 2002-10-02 |
| Yoggie          | hedgehog  | 2009-05-22 |
| 25              | lizard    | 2013-01-10 |
| 3P#_25          | lizard    | 2010-01-10 |
| 3P#_26          | lizard    | 2010-01-10 |
| Pinkie          | lizard    | 2010-03-15 |
| Morris          | olinguito | 2014-06-11 |
| Morton          | olinguito | 2014-06-03 |
| Fritz           | porcupine | 2015-05-25 |
| Fritzchen       | porcupine | 2012-06-02 |
| Gutsy           | porcupine | 2012-04-29 |
| Gutsy           | snake     | 2011-05-12 |
| Pop 22          | snake     | 2010-06-12 |
| Big Mike        | turtle    | 2010-02-02 |
| George          | turtle    | 1998-02-02 |
+-----------------+-----------+------------+
37 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 07 */

/*
Display the 'an_id', the 'ex_date', and the 'stf_id'. Display the rows in order by the 'stf_id'. Use the 'ex_date' as the second sort key with the earlier first. This task assumes you have a table created called 'vt_exam_headers' with data similar to the output.
*/

select
    -> an_id, ex_date, stf_id
    -> from vt_exam_headers
    -> ORDER BY stf_id, ex_date;
+-------+------------+--------+
| an_id | ex_date    | stf_id |
+-------+------------+--------+
| 21317 | 2015-07-23 |     15 |
| 21001 | 2015-08-23 |     15 |
| 17027 | 2015-11-06 |     15 |
| 15401 | 2015-11-06 |     15 |
| 16003 | 2015-11-10 |     15 |
| 19845 | 2015-11-22 |     15 |
| 16003 | 2015-12-01 |     15 |
| 16003 | 2015-12-23 |     15 |
| 21003 | 2015-12-26 |     15 |
| 21005 | 2015-12-31 |     15 |
| 16003 | 2016-01-01 |     15 |
| 15001 | 2016-01-02 |     15 |
| 15002 | 2016-01-08 |     15 |
| 15001 | 2016-01-22 |     25 |
| 15001 | 2016-01-31 |     25 |
| 16002 | 2015-08-03 |     29 |
| 15002 | 2015-08-10 |     29 |
| 16002 | 2015-09-03 |     29 |
| 17025 | 2015-10-03 |     29 |
| 17002 | 2015-10-10 |     29 |
| 17026 | 2015-10-22 |     29 |
| 17027 | 2015-10-24 |     29 |
| 17025 | 2015-11-06 |     29 |
| 16002 | 2015-12-23 |     29 |
| 17027 | 2015-12-27 |     29 |
| 17025 | 2015-12-29 |     29 |
| 17025 | 2015-12-30 |     29 |
| 17026 | 2016-01-15 |     29 |
| 16002 | 2016-02-10 |     29 |
| 16002 | 2016-02-17 |     29 |
| 17025 | 2016-02-25 |     29 |
| 16002 | 2016-02-25 |     29 |
| 21306 | 2015-04-04 |     38 |
| 21307 | 2015-04-08 |     38 |
| 21320 | 2015-04-11 |     38 |
| 21320 | 2015-04-11 |     38 |
| 21316 | 2015-05-08 |     38 |
| 10002 | 2015-05-12 |     38 |
| 21006 | 2015-05-20 |     38 |
| 12038 | 2015-06-02 |     38 |
| 16002 | 2015-06-08 |     38 |
| 16002 | 2015-07-08 |     38 |
| 11028 | 2015-10-02 |     38 |
| 11029 | 2015-10-02 |     38 |
| 16002 | 2016-01-08 |     38 |
| 12035 | 2016-01-09 |     38 |
+-------+------------+--------+
46 rows in set (0.00 sec)

******************************************************************************************************************************

/* TASK 08 */

/*
Display the 'cl_state' in the first column and the 'cl_city' in the second column. Do not include duplicate rows and sort the result set by 'cl_state' and 'cl_city'. This task assumes you have a table created called 'vt_clients' with data similar to the output.
*/

select DISTINCT
    -> cl_state, cl_city
    -> from vt_clients
    -> ORDER BY cl_state, cl_city;
+----------+---------------+
| cl_state | cl_city       |
+----------+---------------+
| AR       | Big Rock      |
| CA       | San Diego     |
| CA       | San Francisco |
| IL       | Springfield   |
| MA       | Boston        |
| MA       | Spring Valley |
| MO       | Springfield   |
| ND       | Big Rock      |
| NM       | San Francisco |
| NY       | New York      |
| OH       | Dayton        |
| OH       | Springfield   |
+----------+---------------+
12 rows in set (0.01 sec)
