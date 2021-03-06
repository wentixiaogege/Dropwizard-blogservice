/*create databse*/
create database blog;

/*Change database*/
use blog

/*create post table*/
create table post(id integer(10) primary key auto_increment,permalink varchar(30) unique not null,author varchar(30) not null,title varchar(50) unique not null,postdate datetime not null,body varchar(2000));

/*create comment table*/
create table comment(id integer(10) primary key auto_increment,author varchar(30) not null,email varchar(50) not null,body varchar(2000));

/*create tag table*/
create table tag(id integer(10) primary key auto_increment,tag varchar(30) unique not null);

/*create post_comment table*/
create table post_comment(post_id integer(10) not null,comment_id varchar(30) not null,unique key unique_index(post_id,comment_id)); 

/*create post_tag table*/
mysql> create table post_tag(post_id integer(10) not null,tag_id varchar(30) not null,unique key unique_index(post_id,tag_id));

