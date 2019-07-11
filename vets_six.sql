/* TASK 01 */

/*
There is a hypothetical hotel that keeps track of all of the their rooms in the hotel and 
all of the guests in each of the rooms. 
They have two tables that have the following structure:

HOTELROOM(RoomNum, type, price)
Primary Key: RoomNum
GUEST(GuestNum, name, address)
Primary Key: GuestNum
Note that there is currently no relationship between the tables.

Here is the data:

HOTELROOM
RoomNum |   type    | price
101     |   Double  | 39.95  
102     |   Single  | 19.95
104     |   Suite   | 49.95   

GUEST
GuestNum |  name       | address
243-678  |  John Harpo | 12345 El Monte Rd
243-679  |  Kelly Harpo| 12345 El Monte Rd
250-878  |  Kim Ho     | 678A Capitol Ave
250-888  |  Jerry Blue | 345 Main St

An employee of the hotel needs to be able to find which guest 
is assigned to which room, so that employee creates a relationship
between the two tables, like this: 

HOTELROOM(RoomNum, type, price, GuestNum)
Primary Key: RoomNum
Foreign Key: GuestNum
GUEST(GuestNum, name, address)
Primary Key: GuestNum

Here is the data once the relationship is established below. 
Assume that this is all of the data and any new data would 
follow the same relationship pattern as demonstrated in the existing data:

HOTELROOM
RoomNum |   type    | price | Guest
101     |   Double  | 39.95 | 250-878 
102     |   Single  | 19.95 | 250-888
104     |   Suite   | 49.95 | 243-678
104     |   Suite   | 49.95 | 243-679

GUEST
GuestNum | name       | address
243-678  | John Harpo | 12345 El Monte Rd   
243-679  | Kelly Harpo| 12345 El Monte Rd  
250-878  | Kim Ho     | 678A Capitol Ave
250-888  | Jerry Blue | 345 Main St

Was the relationship established correctly?
How can you tell?
*/

If 'GUEST' is the 'parent table', the 'Referential Integrity Rule' states 'if there is a value in a foreign key attribute, 
then that value must match a value in the related attribute in the parent table.' 
The table 'HOTELROOM(RoomNum, type, price, GuestNum)' has a foreign key value 'GuestNum' and that value is related to table 'GUEST(GuestNum, name, address)'.

******************************************************************************************************************************

/* TASK 02 */

/*
It doesn't happen very often, but occasionally a very 
rich and famous guest will reserve multiple rooms. 
In fact, the President of the United States once stayed at this hotel, 
and for security reasons, the entire floor was reserved for him. 
The tables were modified to handle this new relationship.
The tables below reflect the design change.

HOTELROOM
RoomNum |   type    | price | Guest
101     |   Double  | 39.95 | 250-878 
102     |   Single  | 19.95 | 250-888
104     |   Suite   | 49.95 | 243-678
104     |   Suite   | 49.95 | 243-679
500-599 |   Suite   | 49.95 | 250-889

GUEST
GuestNum | name              | address
243-678  | John Harpo        | 12345 El Monte Rd   
243-679  | Kelly Harpo       | 12345 El Monte Rd  
250-878  | Kim Ho            | 678A Capitol Ave
250-888  | Jerry Blue        | 345 Main St
250-889  | US Secret Service | 1700 Montgomery St, #300

Was the relationship established correctly? How can you tell?
*/

According to 'Normal Forms', 'rule of 1st Normal Form is no attribute value can be a part of a set (i.e. no repeating groups)'. 
The table should be modified to 'eliminate repeating groups'. 

******************************************************************************************************************************

/* TASK 03 */

/*
There is redundancy in this design.
A) How could this design potentially lead to errors in the data?
B) How could this design negatively impact the front desk personnel who have to use it?
C) Where is the redundancy in the data in these tables?
D) How could you change the table structures to remove the redundancy?
Explain your reasoning in general terms, but do not provide a database design.
*/

One of the 'Goals of Normalization' is to 'help you design a table to reduce redundancy' and 
'redundancy is storing the same data value in more than one table.' Redundancy is stated to 'lead to errors'.

If the redundancy leads to errors and the front desk personnel attempt to modify the data, 
errors in the table might occur called anomalies. If the front desk personnel attempt to update the data, 
an 'update anomaly' might occur. 'Update anomalies' are 'having inconsistent data because the data was updated in one row but not in all rows.'. 
If the front desk personnel attempt to insert data, an 'insertion anomaly' can occur. 
'Insertion anomalies' are 'the inability to add a new data to a table.' 
If the front desk personnel attempt to delete data, a 'deletion anomaly' can occur. 
'Deletion anomalies' are a 'loss of data because we wanted to remove other data values'.

The redundancy in the data in these tables are in column 'Guest' of table 'HOTELROOM' and column 'GuestNum' of table 'GUEST'. 

To remove the redundancy, 'update anomalies where one copy of the data value is changed but other values of the same data item are not changed', 
'delete anomalies where deleting one data value results in too much data being deleted', 
and 'insert anomalies where the user cannot insert the data values they wish to store'. 

******************************************************************************************************************************

/* TASK 04 */

/*
Provide what you consider to be the best database design for the data provided 
and explain why it is the best design. 
Display the data as it would reside in your design.
*/

HOTELROOM(RoomNum, Type, Price, GuestNum) 
Primary Key: RoomNum
Foreign Key: GuestNum
GUEST(GuestNum, FirstName, LastName) 
Primary Key: GuestNum
GUEST(GuestNum, Address) 
Primary Key: GuestNum

The HOTELROOM table includes a room number, a type of room, a price for the room, and a guest number. 
The GUEST table includes the guest number, the name of the guest, and the address of the guest. 
The GUEST table can be split into multiple tables where one table can be for the guest number, guest last name and guest first name. 
The second table can be for the guest addresses and the guest number would have to be included in order to link back to the main table. 
To link back to the main table 'requires an understanding of the business rules and policies reflected in the data collection'.


HOTELROOM
**********************************************
RoomNum     Type        Price       GuestNum
**********************************************
101         Double      39.95       250-878 
**********************************************
102         Single      19.95       250-888 
**********************************************
104         Suite       49.95       243-678 
**********************************************
104         Suite       49.95       243-679 
**********************************************


GUEST
**********************************
GuestNum    FirstName   LastName 
**********************************
250-878     John        Harpo 
**********************************
250-888     Kelly       Harpo 
**********************************
243-678     Kim         Ho 
**********************************
243-679     Jerry       Blue 
**********************************


GuestNum    Address 
**********************************
250-878     12345 El Monte Rd 
**********************************
250-888     12345 El Monte Rd 
**********************************
243-678     678A Capitol Ave 
**********************************
243-679     345 Main St 
**********************************
