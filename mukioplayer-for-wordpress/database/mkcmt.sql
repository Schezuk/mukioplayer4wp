create table Cmt(
id       integer primary key,
cmid     integer not null,
color    integer,
mode     smallint,
stime    float not null,
size     char(3),
message  text not null,
postdate integer not null,
user     integer default 0
);
create index CmtCid on Cmt (cmid);
/* ����                                      */
create index CmtRange on Cmt (cmid,mode);
/* ���ּ�����mode�ֶ�,�ֳɼ�����Χ           */
/* 0x000 - 0x0ff ��ͨ��Ļ                    */
/* 0x100 - 0x1ff ��Ļ��Ļ                    */
/* ����mode������                            */
create table CmtMeta(
id       integer primary key,
cid      varchar(255) not null,
totlenum integer default 0,
savednum integer default 0,/* ���� */
maxnum   integer default 1000,
enable   integer default 1,
post     integer default 0,
author   integer default 0
);
create index CmtMetaCid on CmtMeta (cid);

