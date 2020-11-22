create table account (
id int(11) not null auto_increment,
name varchar(50) not null, 
stop_date int(11) default null, 
primary key(id)
)engine=InnoDB AUTO_INCREMENT=1000 default charset=utf8;


-- 数据：
insert into account (id, name, stop_date) values (1001, A001, 0706);
insert into account (id, name, stop_date) values (1002, A002, 0705);
insert into account (id, name, stop_date) values (1003, A003, 0704);


create table sub_account (
id int(11) not null auto_increment,
parent_id int(11) default null,
subname varchar(50) not null, 
new_stop_date int(11) default null, 
primary key(id),
FOREIGN KEY (parent_id) REFERENCES account(id)
)engine=InnoDB AUTO_INCREMENT=3000 default charset=utf8;

insert into sub_account (parent_id, subname) values (1001, 'S0011');
insert into sub_account (parent_id, subname) values (1001, 'S0012');
insert into sub_account (parent_id, subname) values (1001, 'S0013');

insert into sub_account (parent_id, subname) values (1002, 'S0021');
insert into sub_account (parent_id, subname) values (1002, 'S0023');


-- 添加new_stop_date列
alter table sub_account add column new_stop_date int(11) DEFAULT NULL;
-- 删除new_stop_date列
ALTER TABLE sub_account DROP COLUMN new_stop_date;


-- 更新subaccount字段为对应account表中字段的值
update sub_account, account set sub_account.new_stop_date = account.stop_date where sub_account.parent_id = account.id;

-- 查询更新后的结果
select * from account, sub_account where account.id = sub_account.parent_id;

-- 更改account表的stop_date值
update account set stop_date = NULL where id = 1003;

-- 用存储过程按条件更新new_stop_date。如果不存在字段，则添加字段并更新字段值；如果存在，则不作任何操作；
drop procedure if exists proc_update_new_stop_date;
delimiter //
create procedure proc_update_new_stop_date() 
begin
    select count(*) into @count from information_schema.columns where table_name = 'sub_account' and column_name = 'new_stop_date';
    if(@count = 0) then
        alter table sub_account add column new_stop_date int(11) default null;
        update sub_account, account set sub_account.new_stop_date = account.stop_date where sub_account.parent_id = account.id;
    end if;
end //
delimiter ;
call proc_update_new_stop_date;



drop procedure if exists proc_update_new_stop_date;
delimiter //
create procedure proc_update_new_stop_date() 
begin
    DECLARE CurrentDatabase VARCHAR(100);
    SELECT DATABASE() INTO CurrentDatabase;
    IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_schema = CurrentDatabase AND table_name = 'sub_account' AND column_name = 'new_stop_date') THEN
        alter table sub_account add column new_stop_date int(11) default null;
        update sub_account, account set sub_account.new_stop_date = account.stop_date where sub_account.parent_id = account.id;
    end if;
end //
delimiter ;
call proc_update_new_stop_date;

































