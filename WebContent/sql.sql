 create table user(userid int not null primary key AUTO_INCREMENT,email VARCHAR(255) not null,username  VARCHAR(40) not null ,userpwd VARCHAR(40) not null,createtime date);
 
create table song (songid int not null primary key AUTO_INCREMENT,songname VARCHAR(255) not null,songsrc  VARCHAR(40) not null ,player varchar(255) not null,album varchar(255)  null,colletpoint int default 0,playcount int default 0,uploadtime date)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `song`  ADD COLUMN `other` Text  AFTER `uploadtime`;		



create table mv (mvid int not null primary key AUTO_INCREMENT,mvname VARCHAR(255) not null,mvsrc  VARCHAR(40) not null ,player varchar(255) not null,album varchar(255)  null,colletpoint int default 0,playcount int default 0,uploadtime date)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table comment(commentsid int not null primary key AUTO_INCREMENT,fortype int not null,enetityid int not null,commentscontext Text not null)ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `comment`  ADD COLUMN `commentdate` datetime  AFTER `commentscontext`;	

ALTER TABLE `comment`  ADD COLUMN `username` varchar(255)  AFTER `commentdate`;	

alter table comment modify commentdate timestamp

alter table song modify songsrc  varchar(255)

alter table mv modify mvsrc  varchar(255)

alter table song add column  img  text after other; 

alter table mv add column  other  text after img; 

alter table mv add column  img  text after other; 

alter table mv add column  img  text after updatetime; 

alter table mv add column  other  text after img; 
