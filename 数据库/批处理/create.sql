create table t_user(
	suser varchar2(20) primary key,
	pass varchar2(16) default '123456',
	name varchar2(20),
	sex varchar2(3) ,
	birth varchar2(20) ,
	email varchar2(60),
	tel varchar2(20),
	address varchar2(60),
	postcode char(6),
	regdate date default sysdate,
	status varchar2(3) default '否'
);
comment on table t_user is '用户信息';
comment on column t_user.suser is '用户名';
comment on column t_user.name is '真实姓名';
comment on column t_user.pass is '密码';
comment on column t_user.sex is '性别';
comment on column t_user.birth is '出生日期';
comment on column t_user.email is '邮箱';
comment on column t_user.address is '地址';
comment on column t_user.tel is '电话号码';
comment on column t_user.regdate is '注册时间';
comment on column t_user.postcode is '邮编';
comment on column t_user.status is '状态';

create table t_mc_type(
	nid number primary key,
	sname varchar2(30) ,
	npid number
);
comment on table t_mc_type is '商品类别';
comment on column t_mc_type.nid is '类别编号';
comment on column t_mc_type.sname is '类别名称';
comment on column t_mc_type.npid is '父类编号';


create table t_mc(
	nid number primary key,
	sname varchar2(30) ,
	sdescription varchar2(300),
	nprice number ,
	simg varchar2(300),
	smctag char(1),
	dcdate date default sysdate,
	nmaxid number,
	nminid number
);
comment on table t_mc is '商品信息';
comment on column t_mc.nid is '商品编号';
comment on column t_mc.sname is '商品名称';
comment on column t_mc.sdescription is '商品描述';
comment on column t_mc.nprice is '商品价格';
comment on column t_mc.simg is '商品图片';
comment on column t_mc.smctag is '是否缺货';
comment on column t_mc.dcdate is '添加时间';
comment on column t_mc.nmaxid is '所属大类';
comment on column t_mc.nminid is '所属小类';

create table t_order(
	nid number primary key,
	scuser varchar2(30),
	dgdate date default sysdate,
	spaytype varchar2(30) ,
	ssendtype varchar2(30) ,
	nmctypesize number,
	nmcsize number,
	ntotalprice number,
	sstatus char(1),
	smsg varchar2(2000),
	sauser varchar2(30),
	dadate date ,
	ssname varchar2(30),
	ssaddress varchar2(300),
	sscode char(6),
	ssphone varchar2(30),
	ssemail varchar2(300)
);

create table t_order_item(
	nid number primary key,
	norderid number,
	nmcid number,
	smcname varchar2(30),
	sdescription varchar2(300),
	simg varchar2(300),
	ncount number,
	nprice number,
	ntotalprice number
);

create sequence seq_t_mc_type;
create sequence seq_t_mc;
create sequence  seq_t_order;
create sequence seq_t_order_item;