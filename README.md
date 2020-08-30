                                          # PROJECT WALKTHROUGH
This is a thorough readme of all the files which are part of my project.I have used various sql queries as needed. 

File name:db.sql
This is the file in which two tables are made.The first table made has the name "bookings".It is used to store the bookings made by the customers and it has various booking details 
like user name,movie name,movie time,booking time,user mobile no.
Below that we have used a dml command insert to insert the new bookings made by the employe after taking customer details and the movie he/she wants to see.
Then we have created a "user" table in which details of all the employes which are working in a theatre are given,basially details 
of those employees are given which are using the software.

File name:index
This is the file which mainly deals with the frontend part of the project.As soon as we open the webpage latest movies will start appearing on the webpage.Also the option of
upcoming shows and cinemas in city are also given.

File name:login
As the name suggest  this file deals with the login part of the project.The designing is done in javascript,bootstrap and the backend part is done in php.
Beneath this page a file known as tickets.html has been called to call all the files related to the endpoints given in the project.

File name:menu
There is a button given at the top right corner of the page,on clicking it the menu option will appear which has two things home and login.This part has been called in the files of 
index and login pages in the project as the menu option is same for index and login page.

Now I will quickly provide a thorough walkthrough of  all the php scripts I have made related to the endpoints.
php scripts:All the relevant sqlqueries have been used while writinf the scripts.
Name:Book tickets:This page has been created to take all the customers details and keep a count of all the tickets booked and if the number of tickets booked is more than 20 then 
the system will no longer book tickets.

Name:View tickets at a particular time:This script has been created to view all the tickets from the bookings table that are made at that particular time. 

Name:updatetickettime:This script has been written to update the timings for a particular ticket in case of any unforseen situations.

Name:deleteticket:This file has been created to delete a particular ticket from the database.

Name:Expiretickets:This file has been created to expire a particular ticket if the difference between the booking time and the current time is more than eight hours.

Name:deleteexpiredtickets:This file has been created to delete all the tickets whose status is marked "expired".

To view a user detail if given the ticket id,that part has been done by postman.
I have also attached the relevant screenshots of postman alon with this project.


