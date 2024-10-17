-- drop database library_db;
create database library_db;
use library_db;

create table Books(
  book_id int primary key auto_increment,
  title varchar(20),
  author varchar(20),
  ISBN varchar(20) unique,
  Genre varchar(20)
);
  
Create table Members(
   member_id int primary key auto_increment,
   bookID int,
   first_name varchar(20),
   last_name varchar(20),
   email varchar(20) unique,
   membership_date date,
   foreign key (bookID) references Books (book_id)
);
   
Create table borrowing_records(
   borrow_id int primary key auto_increment,
   memberID int,
   bookID int,
   borrow_date date,
   return_date date,
   foreign key (memberID) references Members(member_id),
   foreign key (bookID) references Books(book_id)
);
