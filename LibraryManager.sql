reate database Library;
use library;
create table Books(
    Code int,
    Name varchar(100) not null,
    Author varchar(100) not null,
    CategoryCode int,
    primary key (Code),
    foreign key (CategoryCode) references Categories(Code)
);
alter table books add Quantity int after Author;
create table Categories(
    Code int,
    Category varchar(100) not null ,
    Quantity int not null ,
    primary key (Code)
);
alter table categories drop Quantity;
create table Students(
    ID int ,
    Name varchar(100) not null ,
    Class varchar(100) not null ,
    Email varchar(100) unique ,
    PhoneNumber varchar(100) unique,
    primary key (ID)
);
create table BooksBorrowed(
    BookCode int,
    StudentID int,
    DateBorrowed date not null ,
    DateReturned date,
    Description varchar(200),
    foreign key (BookCode) references Books(Code),
    foreign key (StudentID) references Students(ID),
    primary key (BookCode,StudentID)
);