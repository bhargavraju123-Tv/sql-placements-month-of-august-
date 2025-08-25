use placement;
create table constraints(
fname varchar(35) not null,
sname varchar(35),
id int8 unique auto_increment not null primary key,
password varchar(20) not null ,
role varchar(20) default 'student'
);

insert into constraints (fname,sname,id,password,role) values('raju','rani',1,'abc@123','hero');

select * from constraints;

insert into constraints (fname,sname,id,password,role) values('donga','police',2,'xyz@789','villan');

update constraints
set password=''
where id=1;

describe constraints;

select * from constraints;

alter table constraints
add primary key(password);

update constraints
set id='1'
where fname='donga';

alter table constraints
drop primary key
;

-- alter table constraints
-- drop constraint  ; 

# foreign key topic  2-tables(category,product).
create table category (
cid int primary key,
cname varchar(15) not null,
descrption varchar(150) not null
);

create table product (
pid int8 primary key,
pname varchar(15) not null,
descrption varchar(150) not null,
cid int not null,
foreign key (cid) references category(cid)); 

desc category;
desc product;

drop table product;

insert into category values(101,'electricals','qwertyuioppp'),
(102,'beauty','qwertyuioppp'),
(103,'pharma','qwertyuioppp'),
(104,'clothes','qwertyuioppp');

select * from category;

insert into product values
( 902,'i-phone 15','qwertyuioppp',101),
( 903,'i-phone 16','qwertyuioppp',101),
( 904,'facial','qwertyuioppp',102),
( 905,'lipsticks','qwertyuioppp',102),
( 906,'facewash','qwertyuioppp',102),
(907,'t-shirts','qwertyuioppp',104),
(908,'shirts','qwertyuioppp',104),
(909,'skirts','qwertyuioppp',104);

select * from product;






