/*  TASK 01 */

/*
Copy and run the following SQL statement. 
This statement will show the rows in the table. 
This task assumes you have a table created called 'zoo_2016' with data similar to the output. 

select *
from zoo_2016;
*/

 select * 
    -> from zoo_2016;
+------+------------+-----------+---------+------------+------------+
| z_id | z_name     | z_type    | z_cost  | z_dob      | z_acquired |
+------+------------+-----------+---------+------------+------------+
|   23 | Sam        | Giraffe   | 5000.00 | 2014-05-15 | 2014-05-15 |
|   25 | Abigail    | Armadillo |  490.00 | 2013-01-15 | 2013-04-15 |
|   56 | Leon       | Lion      | 5000.00 | 2010-02-25 | 2010-03-25 |
|   57 | Lenora     | Lion      | 5000.00 | 2014-03-25 | 2014-03-31 |
|   85 | Sally Robi | Giraffe   | 5000.25 | 2014-05-15 | 2014-03-15 |
|   43 | Huey       | Zebra     | 2500.25 | 2013-06-02 | 2014-06-02 |
|   44 | Dewey      | Zebra     | 2500.25 | 2014-06-02 | 2014-06-02 |
|   45 | Louie      | Zebra     | 2500.25 | 2013-01-02 | 2013-01-02 |
|   47 |            | Horse     |  490.00 | 2015-01-10 | 2015-01-15 |
|   52 | Dewey      | Giraffe   | 3750.00 | 2013-06-06 | 2013-07-12 |
|  257 | Arnold     | Giraffe   | 5000.00 | 2014-05-15 | 2014-05-15 |
|  258 | NULL       | Giraffe   | 5000.00 | 2013-05-15 | 2013-05-31 |
|  259 | NULL       | Giraffe   | 5000.00 | 2002-05-15 | 2002-05-15 |
+------+------------+-----------+---------+------------+------------+
13 rows in set (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 02  */

/*
Copy and run the following two SQL statements. 
The first will remove any rows from the zoo_2016 table where the z_id value is greater than 100 and the second will show the rows in the table. 
This task assumes you have a table created called 'zoo_2016' with a script that has 'z_id' values less than 100 and data similar to the output.

delete
from zoo_2016
where z_id > 100;
select *
from zoo_2016;
*/

delete
    -> from zoo_2016
    -> where z_id > 100;
Query OK, 3 rows affected (0.02 sec)

select*
    -> from zoo_2016;
+------+------------+-----------+---------+------------+------------+
| z_id | z_name     | z_type    | z_cost  | z_dob      | z_acquired |
+------+------------+-----------+---------+------------+------------+
|   23 | Sam        | Giraffe   | 5000.00 | 2014-05-15 | 2014-05-15 |
|   25 | Abigail    | Armadillo |  490.00 | 2013-01-15 | 2013-04-15 |
|   56 | Leon       | Lion      | 5000.00 | 2010-02-25 | 2010-03-25 |
|   57 | Lenora     | Lion      | 5000.00 | 2014-03-25 | 2014-03-31 |
|   85 | Sally Robi | Giraffe   | 5000.25 | 2014-05-15 | 2014-03-15 |
|   43 | Huey       | Zebra     | 2500.25 | 2013-06-02 | 2014-06-02 |
|   44 | Dewey      | Zebra     | 2500.25 | 2014-06-02 | 2014-06-02 |
|   45 | Louie      | Zebra     | 2500.25 | 2013-01-02 | 2013-01-02 |
|   47 |            | Horse     |  490.00 | 2015-01-10 | 2015-01-15 |
|   52 | Dewey      | Giraffe   | 3750.00 | 2013-06-06 | 2013-07-12 |
+------+------------+-----------+---------+------------+------------+
10 rows in set (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 03 */

/*
Insert 3 statements by adding an additional 3 rows to the table called 'zoo_2016'. 
For the 'z_id', use a value that is greater than 100. For the rest of the data, use any data values you want. 
This task assumes you have a table created called 'zoo_2016' with data similar to the output.
*/

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (101, 'Seff', 'Wolf', 5500.00, '2019-02-05', '2019-02-05');
Query OK, 1 row affected (0.01 sec)

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (102, 'Annie', 'Cow', 6500.00, '2019-02-05', '2019-02-05');
Query OK, 1 row affected (0.00 sec)

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (103, 'Ark', 'Mantis', 7500.00, '2019-02-05', '2019-02-05');
Query OK, 1 row affected (0.00 sec)

select * 
    -> from zoo_2016;
+------+------------+-----------+---------+------------+------------+
| z_id | z_name     | z_type    | z_cost  | z_dob      | z_acquired |
+------+------------+-----------+---------+------------+------------+
|   23 | Sam        | Giraffe   | 5000.00 | 2014-05-15 | 2014-05-15 |
|   25 | Abigail    | Armadillo |  490.00 | 2013-01-15 | 2013-04-15 |
|   56 | Leon       | Lion      | 5000.00 | 2010-02-25 | 2010-03-25 |
|   57 | Lenora     | Lion      | 5000.00 | 2014-03-25 | 2014-03-31 |
|   85 | Sally Robi | Giraffe   | 5000.25 | 2014-05-15 | 2014-03-15 |
|   43 | Huey       | Zebra     | 2500.25 | 2013-06-02 | 2014-06-02 |
|   44 | Dewey      | Zebra     | 2500.25 | 2014-06-02 | 2014-06-02 |
|   45 | Louie      | Zebra     | 2500.25 | 2013-01-02 | 2013-01-02 |
|   47 |            | Horse     |  490.00 | 2015-01-10 | 2015-01-15 |
|   52 | Dewey      | Giraffe   | 3750.00 | 2013-06-06 | 2013-07-12 |
|  101 | Seff       | Wolf      | 5500.00 | 2019-02-05 | 2019-02-05 |
|  102 | Annie      | Cow       | 6500.00 | 2019-02-05 | 2019-02-05 |
|  103 | Ark        | Mantis    | 7500.00 | 2019-02-05 | 2019-02-05 |
+------+------------+-----------+---------+------------+------------+
13 rows in set (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 04 */

/*
Insert 6 statements.
This task assumes you have a table created called 'zoo_2016' with data similar to the output. 
*/

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (203, 'Georgina', 'Gorilla', 50000.00, '2019-01-15','2019-01-15');
Query OK, 1 row affected (0.01 sec)

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (205, 'Lucinda', 'Lemur', 600.00, '2015-01-12','2016-04-19'); 
Query OK, 1 row affected (0.00 sec)

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (207, 'Bobby', 'Bobcat', 800.00, '2017-02-12','2017-09-12');
Query OK, 1 row affected (0.01 sec)

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (201, 'Mackenzie', 'Giraffe', 5001, '1991-01-22', '2000-01-22');
Query OK, 1 row affected (0.01 sec)

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (202, 'Taylor', 'Giraffe', 5001, '1992-07-29', '2010-07-01');
Query OK, 1 row affected (0.03 sec)

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values (203, 'Kaiser', 'Giraffe', 5001, '2003-02-14', '2005-01-01');
Query OK, 1 row affected (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 05 */

/*
Copy and run the following SQL statement. 
It will display the rows in the table. 
This task assumes you have a table created called 'zoo_2016' with data similar to the output.

select z_id, z_name, z_type, z_cost, z_dob, z_acquired
from zoo_2016;
*/


select z_id, z_name, z_type, z_cost, z_dob, z_acquired
    -> from zoo_2016;
+------+------------+-----------+----------+------------+------------+
| z_id | z_name     | z_type    | z_cost   | z_dob      | z_acquired |
+------+------------+-----------+----------+------------+------------+
|   23 | Sam        | Giraffe   |  5000.00 | 2014-05-15 | 2014-05-15 |
|   25 | Abigail    | Armadillo |   490.00 | 2013-01-15 | 2013-04-15 |
|   56 | Leon       | Lion      |  5000.00 | 2010-02-25 | 2010-03-25 |
|   57 | Lenora     | Lion      |  5000.00 | 2014-03-25 | 2014-03-31 |
|   85 | Sally Robi | Giraffe   |  5000.25 | 2014-05-15 | 2014-03-15 |
|   43 | Huey       | Zebra     |  2500.25 | 2013-06-02 | 2014-06-02 |
|   44 | Dewey      | Zebra     |  2500.25 | 2014-06-02 | 2014-06-02 |
|   45 | Louie      | Zebra     |  2500.25 | 2013-01-02 | 2013-01-02 |
|   47 |            | Horse     |   490.00 | 2015-01-10 | 2015-01-15 |
|   52 | Dewey      | Giraffe   |  3750.00 | 2013-06-06 | 2013-07-12 |
|  101 | Seff       | Wolf      |  5500.00 | 2019-02-05 | 2019-02-05 |
|  102 | Annie      | Cow       |  6500.00 | 2019-02-05 | 2019-02-05 |
|  103 | Ark        | Mantis    |  7500.00 | 2019-02-05 | 2019-02-05 |
|  203 | Georgina   | Gorilla   | 50000.00 | 2019-01-15 | 2019-01-15 |
|  205 | Lucinda    | Lemur     |   600.00 | 2015-01-12 | 2016-04-19 |
|  207 | Bobby      | Bobcat    |   800.00 | 2017-02-12 | 2017-09-12 |
|  201 | Mackenzie  | Giraffe   |  5001.00 | 1991-01-22 | 2000-01-22 |
|  202 | Taylor     | Giraffe   |  5001.00 | 1992-07-29 | 2010-07-01 |
|  203 | Kaiser     | Giraffe   |  5001.00 | 2003-02-14 | 2005-01-01 |
+------+------------+-----------+----------+------------+------------+
19 rows in set (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 06 */

/*
Write and run the SQL statement so that it shows only three columns: 'z_type' in the first column, 'z_name' in the second column, and 'z_cost' in the third column. 
Sort the rows by 'z_type' with a secondary sort on 'z_name'. 
This task assumes you have a table created called 'zoo_2016' with data similar to the output.
*/

select 
    -> z_type
    -> , z_name
    -> , z_cost
    -> from zoo_2016
    -> ORDER BY z_type, z_name;
+-----------+------------+----------+
| z_type    | z_name     | z_cost   |
+-----------+------------+----------+
| Armadillo | Abigail    |   490.00 |
| Bobcat    | Bobby      |   800.00 |
| Cow       | Annie      |  6500.00 |
| Giraffe   | Dewey      |  3750.00 |
| Giraffe   | Kaiser     |  5001.00 |
| Giraffe   | Mackenzie  |  5001.00 |
| Giraffe   | Sally Robi |  5000.25 |
| Giraffe   | Sam        |  5000.00 |
| Giraffe   | Taylor     |  5001.00 |
| Gorilla   | Georgina   | 50000.00 |
| Horse     |            |   490.00 |
| Lemur     | Lucinda    |   600.00 |
| Lion      | Lenora     |  5000.00 |
| Lion      | Leon       |  5000.00 |
| Mantis    | Ark        |  7500.00 |
| Wolf      | Seff       |  5500.00 |
| Zebra     | Dewey      |  2500.25 |
| Zebra     | Huey       |  2500.25 |
| Zebra     | Louie      |  2500.25 |
+-----------+------------+----------+
19 rows in set (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 07 */

/*
We want to see the 'z_id', 'z_name' and 'z_dob' of all the 'Zebra' in the table 'zoo_2016'. 
Display the 'z_id' in the first column, 'z_name' in the second column, and 'z_dob' in the third column. 
Sort by the 'z_dob' with the youngest displayed first. 
This task assumes you have a table created called 'zoo_2016' with data similar to the output.
*/

select
    -> z_id
    -> , z_name
    -> , z_dob
    -> from zoo_2016
    -> where z_type = 'Zebra'
    -> ORDER BY z_dob DESC;
+------+--------+------------+
| z_id | z_name | z_dob      |
+------+--------+------------+
|   44 | Dewey  | 2014-06-02 |
|   43 | Huey   | 2013-06-02 |
|   45 | Louie  | 2013-01-02 |
+------+--------+------------+
3 rows in set (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 08 */

/*
Give the following command which shows the names of your tables (the output should include the 'zoo_2016' table). 
This task assumes you have a table created called 'zoo_2016' with data similar to the output.

SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='BASE TABLE';
*/
 SELECT *
    -> FROM INFORMATION_SCHEMA.TABLES 
    -> WHERE TABLE_TYPE='BASE TABLE';


+---------------+--------------------+----------------------------------------------------+------------+--------------------+---------+------------+------------+----------------+-------------+--------------------+--------------+-----------+----------------+---------------------+---------------------+---------------------+-----------------+----------+--------------------+-----------------------------------------+
| TABLE_CATALOG | TABLE_SCHEMA       | TABLE_NAME                                         | TABLE_TYPE | ENGINE             | VERSION | ROW_FORMAT | TABLE_ROWS | AVG_ROW_LENGTH | DATA_LENGTH | MAX_DATA_LENGTH    | INDEX_LENGTH | DATA_FREE | AUTO_INCREMENT | CREATE_TIME         | UPDATE_TIME         | CHECK_TIME          | TABLE_COLLATION | CHECKSUM | CREATE_OPTIONS     | TABLE_COMMENT                           |
+---------------+--------------------+----------------------------------------------------+------------+--------------------+---------+------------+------------+----------------+-------------+--------------------+--------------+-----------+----------------+---------------------+---------------------+---------------------+-----------------+----------+--------------------+-----------------------------------------+
| def           | mysql              | columns_priv                                       | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 | 227994731135631359 |         4096 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_bin        |     NULL |                    | Column privileges                       |
| def           | mysql              | db                                                 | BASE TABLE | MyISAM             |      10 | Fixed      |          2 |            440 |         880 | 123848989752688639 |         5120 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:31 | 2018-01-10 06:35:31 | utf8_bin        |     NULL |                    | Database privileges                     |
| def           | mysql              | event                                              | BASE TABLE | MyISAM             |      10 | Dynamic    |          0 |              0 |           0 |    281474976710655 |         2048 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | Events                                  |
| def           | mysql              | func                                               | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 | 162974011515469823 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_bin        |     NULL |                    | User defined functions                  |
| def           | mysql              | general_log                                        | BASE TABLE | CSV                |      10 | Dynamic    |          2 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    | General log                             |
| def           | mysql              | help_category                                      | BASE TABLE | MyISAM             |      10 | Dynamic    |         40 |             28 |        1120 |    281474976710655 |         3072 |         0 |           NULL | 2018-01-10 06:35:32 | 2018-01-10 06:35:32 | NULL                | utf8_general_ci |     NULL |                    | help categories                         |
| def           | mysql              | help_keyword                                       | BASE TABLE | MyISAM             |      10 | Fixed      |        619 |            197 |      121943 |  55450570411999231 |        22528 |         0 |           NULL | 2018-01-10 06:35:32 | 2018-01-10 06:35:32 | NULL                | utf8_general_ci |     NULL |                    | help keywords                           |
| def           | mysql              | help_relation                                      | BASE TABLE | MyISAM             |      10 | Fixed      |       1273 |              9 |       11457 |   2533274790395903 |        22528 |         0 |           NULL | 2018-01-10 06:35:32 | 2018-01-10 06:35:32 | NULL                | utf8_general_ci |     NULL |                    | keyword-topic relation                  |
| def           | mysql              | help_topic                                         | BASE TABLE | MyISAM             |      10 | Dynamic    |        585 |            983 |      575100 |    281474976710655 |        22528 |         0 |           NULL | 2018-01-10 06:35:32 | 2018-01-10 06:35:32 | NULL                | utf8_general_ci |     NULL |                    | help topics                             |
| def           | mysql              | innodb_index_stats                                 | BASE TABLE | InnoDB             |      10 | Compact    |          6 |           2730 |       16384 |                  0 |            0 |         0 |           NULL | 2018-01-29 21:52:59 | NULL                | NULL                | utf8_bin        |     NULL | stats_persistent=0 |                                         |
| def           | mysql              | innodb_table_stats                                 | BASE TABLE | InnoDB             |      10 | Compact    |          2 |           8192 |       16384 |                  0 |            0 |         0 |           NULL | 2018-01-29 21:52:59 | NULL                | NULL                | utf8_bin        |     NULL | stats_persistent=0 |                                         |
| def           | mysql              | ndb_binlog_index                                   | BASE TABLE | MyISAM             |      10 | Dynamic    |          0 |              0 |           0 |    281474976710655 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | mysql              | plugin                                             | BASE TABLE | MyISAM             |      10 | Dynamic    |          0 |              0 |           0 |    281474976710655 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | MySQL plugins                           |
| def           | mysql              | proc                                               | BASE TABLE | MyISAM             |      10 | Dynamic    |          0 |              0 |           0 |    281474976710655 |         2048 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | Stored Procedures                       |
| def           | mysql              | procs_priv                                         | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 | 239253730204057599 |         4096 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_bin        |     NULL |                    | Procedure privileges                    |
| def           | mysql              | proxies_priv                                       | BASE TABLE | MyISAM             |      10 | Fixed      |          2 |            693 |        1386 | 195062158860484607 |         5120 |         0 |           NULL | 2018-01-10 06:35:31 | 2018-01-10 06:35:31 | 2018-01-10 06:35:31 | utf8_bin        |     NULL |                    | User proxy privileges                   |
| def           | mysql              | servers                                            | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 | 433752939111120895 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | MySQL Foreign Servers table             |
| def           | mysql              | slave_master_info                                  | BASE TABLE | InnoDB             |      10 | Compact    |          0 |              0 |       16384 |                  0 |            0 |         0 |           NULL | 2018-01-29 21:52:59 | NULL                | NULL                | utf8_general_ci |     NULL | stats_persistent=0 | Master Information                      |
| def           | mysql              | slave_relay_log_info                               | BASE TABLE | InnoDB             |      10 | Compact    |          0 |              0 |       16384 |                  0 |            0 |         0 |           NULL | 2018-01-29 21:52:59 | NULL                | NULL                | utf8_general_ci |     NULL | stats_persistent=0 | Relay Log Information                   |
| def           | mysql              | slave_worker_info                                  | BASE TABLE | InnoDB             |      10 | Compact    |          0 |              0 |       16384 |                  0 |            0 |         0 |           NULL | 2018-01-29 21:52:59 | NULL                | NULL                | utf8_general_ci |     NULL | stats_persistent=0 | Worker Information                      |
| def           | mysql              | slow_log                                           | BASE TABLE | CSV                |      10 | Dynamic    |          2 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    | Slow log                                |
| def           | mysql              | tables_priv                                        | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 | 239535205180768255 |         4096 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_bin        |     NULL |                    | Table privileges                        |
| def           | mysql              | time_zone                                          | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 |   1970324836974591 |         1024 |         0 |              1 | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | Time zones                              |
| def           | mysql              | time_zone_leap_second                              | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 |   3659174697238527 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | Leap seconds information for time zones |
| def           | mysql              | time_zone_name                                     | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 |  55450570411999231 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | Time zone names                         |
| def           | mysql              | time_zone_transition                               | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 |   4785074604081151 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | Time zone transitions                   |
| def           | mysql              | time_zone_transition_type                          | BASE TABLE | MyISAM             |      10 | Fixed      |          0 |              0 |           0 |  10696049115004927 |         1024 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:35:30 | NULL                | utf8_general_ci |     NULL |                    | Time zone transition types              |
| def           | mysql              | user                                               | BASE TABLE | MyISAM             |      10 | Dynamic    |          6 |            110 |         664 |    281474976710655 |         2048 |         0 |           NULL | 2018-01-10 06:35:30 | 2018-01-10 06:37:16 | NULL                | utf8_bin        |     NULL |                    | Users and global privileges             |
| def           | mysql              | zoo_2016                                           | BASE TABLE | InnoDB             |      10 | Compact    |          0 |              0 |       16384 |                  0 |            0 |         0 |           NULL | 2019-02-01 02:18:32 | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | accounts                                           | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Fixed      |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | cond_instances                                     | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_current                              | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_history                              | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_history_long                         | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |      10000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_summary_by_account_by_event_name     | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_summary_by_host_by_event_name        | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_summary_by_thread_by_event_name      | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_summary_by_user_by_event_name        | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_stages_summary_global_by_event_name         | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_current                          | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_history                          | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_history_long                     | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |      10000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_summary_by_account_by_event_name | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_summary_by_digest                | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_summary_by_host_by_event_name    | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_summary_by_thread_by_event_name  | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_summary_by_user_by_event_name    | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_statements_summary_global_by_event_name     | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_current                               | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_history                               | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_history_long                          | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |      10000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_summary_by_account_by_event_name      | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_summary_by_host_by_event_name         | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_summary_by_instance                   | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_summary_by_thread_by_event_name       | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_summary_by_user_by_event_name         | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | events_waits_summary_global_by_event_name          | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | file_instances                                     | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | file_summary_by_event_name                         | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | file_summary_by_instance                           | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | host_cache                                         | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | hosts                                              | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Fixed      |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | mutex_instances                                    | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | objects_summary_global_by_type                     | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | performance_timers                                 | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Fixed      |          5 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | rwlock_instances                                   | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | session_account_connect_attrs                      | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_bin        |     NULL |                    |                                         |
| def           | performance_schema | session_connect_attrs                              | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_bin        |     NULL |                    |                                         |
| def           | performance_schema | setup_actors                                       | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Fixed      |          1 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | setup_consumers                                    | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |         12 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | setup_instruments                                  | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | setup_objects                                      | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |          4 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | setup_timers                                       | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |          4 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | socket_instances                                   | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | socket_summary_by_event_name                       | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | socket_summary_by_instance                         | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | table_io_waits_summary_by_index_usage              | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | table_io_waits_summary_by_table                    | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | table_lock_waits_summary_by_table                  | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | threads                                            | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Dynamic    |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | performance_schema | users                                              | BASE TABLE | PERFORMANCE_SCHEMA |      10 | Fixed      |       1000 |              0 |           0 |                  0 |            0 |         0 |           NULL | NULL                | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
| def           | zoo_2016           | zoo_2016                                           | BASE TABLE | InnoDB             |      10 | Compact    |         19 |            862 |       16384 |                  0 |            0 |         0 |           NULL | 2019-02-03 04:34:02 | NULL                | NULL                | utf8_general_ci |     NULL |                    |                                         |
+---------------+--------------------+----------------------------------------------------+------------+--------------------+---------+------------+------------+----------------+-------------+--------------------+--------------+-----------+----------------+---------------------+---------------------+---------------------+-----------------+----------+--------------------+-----------------------------------------+
82 rows in set (0.06 sec)


/*
Alternative to the previous command to receive similiar results.
*/

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| zoo_2016           |
+--------------------+
4 rows in set (0.00 sec)


mysql> SHOW TABLES;
+--------------------+
| Tables_in_zoo_2016 |
+--------------------+
| zoo_2016           |
+--------------------+
1 row in set (0.00 sec)

*********************************************************************************************************************************************************

/*  TASK 09 */

/*
Execute the following command to view the column names in the 'zoo_2016' table. 
This task assumes you have a table created called 'zoo_2016' with data similar to the output.

Select column_name
From INFORMATION_SCHEMA.COLUMNS
Where TABLE_NAME='zoo_2016'
*/

Select column_name
    -> From INFORMATION_SCHEMA.COLUMNS 
    -> Where TABLE_NAME = 'zoo_2016'
    -> ;
+-----------------+
| column_name     |
+-----------------+
| z_id            |
| z_name          |
| z_type          |
| z_cost          |
| z_dob           |
| z_acquired date |
| z_id            |
| z_name          |
| z_type          |
| z_cost          |
| z_dob           |
| z_acquired      |
+-----------------+
12 rows in set (0.01 sec)

*********************************************************************************************************************************************************

/*  TASK 10 */

/*
Give the following command which shows all of the information about the table columns in the information_schema.columns table.

Select *
From INFORMATION_SCHEMA.COLUMNS
Where TABLE_NAME='zoo_2016'
*/

Select * 
    -> From INFORMATION_SCHEMA.COLUMNS 
    -> Where TABLE_NAME = 'zoo_2016'
    -> ;
+---------------+--------------+------------+-----------------+------------------+----------------+-------------+-----------+--------------------------+------------------------+-------------------+---------------+--------------------+--------------------+-----------------+--------------+------------+-------+---------------------------------+----------------+
| TABLE_CATALOG | TABLE_SCHEMA | TABLE_NAME | COLUMN_NAME     | ORDINAL_POSITION | COLUMN_DEFAULT | IS_NULLABLE | DATA_TYPE | CHARACTER_MAXIMUM_LENGTH | CHARACTER_OCTET_LENGTH | NUMERIC_PRECISION | NUMERIC_SCALE | DATETIME_PRECISION | CHARACTER_SET_NAME | COLLATION_NAME  | COLUMN_TYPE  | COLUMN_KEY | EXTRA | PRIVILEGES                      | COLUMN_COMMENT |
+---------------+--------------+------------+-----------------+------------------+----------------+-------------+-----------+--------------------------+------------------------+-------------------+---------------+--------------------+--------------------+-----------------+--------------+------------+-------+---------------------------------+----------------+
| def           | mysql        | zoo_2016   | z_id            |                1 | NULL           | NO          | int       |                     NULL |                   NULL |                10 |             0 |               NULL | NULL               | NULL            | int(11)      |            |       | select,insert,update,references |                |
| def           | mysql        | zoo_2016   | z_name          |                2 | NULL           | YES         | char      |                       25 |                     75 |              NULL |          NULL |               NULL | utf8               | utf8_general_ci | char(25)     |            |       | select,insert,update,references |                |
| def           | mysql        | zoo_2016   | z_type          |                3 | NULL           | NO          | char      |                       25 |                     75 |              NULL |          NULL |               NULL | utf8               | utf8_general_ci | char(25)     |            |       | select,insert,update,references |                |
| def           | mysql        | zoo_2016   | z_cost          |                4 | NULL           | NO          | decimal   |                     NULL |                   NULL |                 7 |             2 |               NULL | NULL               | NULL            | decimal(7,2) |            |       | select,insert,update,references |                |
| def           | mysql        | zoo_2016   | z_dob           |                5 | NULL           | NO          | date      |                     NULL |                   NULL |              NULL |          NULL |               NULL | NULL               | NULL            | date         |            |       | select,insert,update,references |                |
| def           | mysql        | zoo_2016   | z_acquired date |                6 | NULL           | NO          | date      |                     NULL |                   NULL |              NULL |          NULL |               NULL | NULL               | NULL            | date         |            |       | select,insert,update,references |                |
| def           | zoo_2016     | zoo_2016   | z_id            |                1 | NULL           | NO          | int       |                     NULL |                   NULL |                10 |             0 |               NULL | NULL               | NULL            | int(11)      |            |       | select,insert,update,references |                |
| def           | zoo_2016     | zoo_2016   | z_name          |                2 | NULL           | YES         | char      |                       25 |                     75 |              NULL |          NULL |               NULL | utf8               | utf8_general_ci | char(25)     |            |       | select,insert,update,references |                |
| def           | zoo_2016     | zoo_2016   | z_type          |                3 | NULL           | NO          | char      |                       25 |                     75 |              NULL |          NULL |               NULL | utf8               | utf8_general_ci | char(25)     |            |       | select,insert,update,references |                |
| def           | zoo_2016     | zoo_2016   | z_cost          |                4 | NULL           | NO          | decimal   |                     NULL |                   NULL |                 7 |             2 |               NULL | NULL               | NULL            | decimal(7,2) |            |       | select,insert,update,references |                |
| def           | zoo_2016     | zoo_2016   | z_dob           |                5 | NULL           | NO          | date      |                     NULL |                   NULL |              NULL |          NULL |               NULL | NULL               | NULL            | date         |            |       | select,insert,update,references |                |
| def           | zoo_2016     | zoo_2016   | z_acquired      |                6 | NULL           | NO          | date      |                     NULL |                   NULL |              NULL |          NULL |               NULL | NULL               | NULL            | date         |            |       | select,insert,update,references |                |
+---------------+--------------+------------+-----------------+------------------+----------------+-------------+-----------+--------------------------+------------------------+-------------------+---------------+--------------------+--------------------+-----------------+--------------+------------+-------+---------------------------------+----------------+
12 rows in set (0.01 sec)
