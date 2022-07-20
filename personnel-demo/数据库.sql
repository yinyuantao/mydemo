/*    �� SQL DDL �ű��� Microsoft Visual Studio (��������:LOCAL BUILD) ���ɡ�                            */

/*    ������������: Microsoft Visual Studio �� Microsoft SQL Server ��������                            */
/*    �ĵ�: E:\hr����\���ݿ����.vsd��                                                                  */
/*    ����ʱ��: 2007��5��31�� 10:41��                                                                 */
/*    ����: ���� Visio �����򵼡�                                                                      */
/*    �����ӵ�����Դ: û�����ӡ�                                                                          */
/*    �����ӵķ�����: û�����ӡ�                                                                          */
/*    �����ӵ����ݿ�: �����á�                                                                           */



/*SET QUOTED_IDENTIFIER ON

go


/* ���� HR_DB ���ݿ⡣                                                                              */
use master  

go

if exists (select * from sysdatabases where name = 'HR_DB')
   drop database HR_DB
go

create database "HR_DB" 
ON PRIMARY
	 ( NAME = hr_db, FILENAME = 'c:\hr_db.mdf', SIZE = 3 MB, MAXSIZE = UNLIMITED, FILEGROWTH = 256 KB )
LOG ON
	 ( NAME = hr_log, FILENAME = 'c:\hr_log.ldf', SIZE = 1 MB, MAXSIZE = UNLIMITED, FILEGROWTH = 256 KB )  

go*/

use "HR_DB"  

go

/* �����±� "user"��                                                                               */
/* "user" : �û���                                                                               */
/* 	"user_id" : �������Զ�������                                                                      */
/* 	"user_name" : �û���                                                                         */
/* 	"user_true_name" : ��ʵ����                                                                   */
/* 	"user_password" : ����                                                                      */  
create table "users" ( 
	"u_id" smallint identity not null,
	"u_name" varchar(60) not null,
	"u_true_name" varchar(60) not null,
	"u_password" varchar(60) not null)  

go

alter table "users"
	add constraint "users_PK" primary key ("u_id")   
go

insert into users(u_name,u_true_name,u_password) values('better_admin','zhangsan','123456')

go


/* �����±� "config_file_first_kind"��                                                             */
/* "config_file_first_kind" : һ����������                                                          */
/* 	"ffk_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"first_kind_salary_id" : һ������н�귢�������˱��                                                    */
/* 	"first_kind_sale_id" : һ���������������˱��                                                        */  
create table "config_file_first_kind" ( 
	"ffk_id" smallint identity not null,
	"first_kind_id" char(2) ,
	"first_kind_name" varchar(60) ,
	"first_kind_salary_id" text ,
	"first_kind_sale_id" text )  

go

alter table "config_file_first_kind"
	add constraint "config_file_first_kind_PK" primary key ("ffk_id")   

insert into config_file_first_kind values('01','����','1','1')
go

/* �����±� "config_file_second_kind"��                                                            */
/* "config_file_second_kind" : ������������                                                         */
/* 	"fsk_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"second_kind_id" : �����������                                                                 */
/* 	"second_kind_name" : ������������                                                               */
/* 	"second_salary_id" : ��������н�귢�������˱��                                                        */
/* 	"second_sale_id" : �����������������˱��                                                            */  
create table "config_file_second_kind" ( 
	"fsk_id" smallint identity not null,
	"first_kind_id" char(2) ,
	"first_kind_name" varchar(60) ,
	"second_kind_id" char(2) ,
	"second_kind_name" varchar(60) ,
	"second_salary_id" text ,
	"second_sale_id" text )  

go

alter table "config_file_second_kind"
	add constraint "config_file_second_kind_PK" primary key ("fsk_id")   


go

insert into config_file_second_kind values('01','����','01','�����˾','1','1')
insert into config_file_second_kind values('01','����','02','����Ƽ����޹�˾','1','1')

go

/* �����±� "config_file_third_kind"��                                                             */
/* "config_file_third_kind" : ������������                                                          */
/* 	"ftk_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"second_kind_id" : �����������                                                                 */
/* 	"second_kind_name" : ������������                                                               */
/* 	"third_kind_id" : �����������                                                                  */
/* 	"third_kind_name" : ������������                                                                */
/* 	"third_kind_sale_id" : �����������������˱��                                                        */
/* 	"third_kind_is_retail" : ���������Ƿ�Ϊ���۵�                                                       */  
create table "config_file_third_kind" ( 
	"ftk_id" smallint identity not null,
	"first_kind_id" char(2) ,
	"first_kind_name" varchar(60) ,
	"second_kind_id" char(2) ,
	"second_kind_name" varchar(60) ,
	"third_kind_id" char(2) ,
	"third_kind_name" varchar(60) ,
	"third_kind_sale_id" text ,
	"third_kind_is_retail" char(2) )  

go

alter table "config_file_third_kind"
	add constraint "config_file_third_kind_PK" primary key ("ftk_id")   

go

insert into config_file_third_kind values('01','����','01','�����˾','01','�����','1','��')
insert into config_file_third_kind values('01','����','02','����Ƽ����޹�˾','01','ҩ��','1','��')

go


/* �����±� "config_question_first_kind"��                                                         */
/* "config_question_first_kind" : ����һ����������                                                    */
/* 	"qfk_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : ����һ��������                                                                */
/* 	"first_kind_name" : ����һ����������                                                              */  
create table "config_question_first_kind" ( 
	"qfk_id" smallint identity not null,
	"first_kind_id" char(2) ,
	"first_kind_name" varchar(60) )  

go

alter table "config_question_first_kind"
	add constraint "config_question_first_kind_PK" primary key ("qfk_id")   


go

insert into config_question_first_kind values('01','������')
insert into config_question_first_kind values('02','������')

go


/* �����±� "config_question_second_kind"��                                                        */
/* "config_question_second_kind" : ���������������                                                   */
/* 	"qsk_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : ����һ��������                                                                */
/* 	"first_kind_name" : ����һ����������                                                              */
/* 	"second_kind_id" : �������������                                                               */
/* 	"second_kind_name" : ���������������                                                             */  
create table "config_question_second_kind" ( 
	"qsk_id" smallint identity not null,
	"first_kind_id" char(2) ,
	"first_kind_name" varchar(60) ,
	"second_kind_id" char(2) ,
	"second_kind_name" varchar(60) )  

go

alter table "config_question_second_kind"
	add constraint "config_question_second_kind_PK" primary key ("qsk_id")   


go

insert into config_question_second_kind values('01','������','01','������')
insert into config_question_second_kind values('01','������','02','������')
insert into config_question_second_kind values('02','������','01','���������')
insert into config_question_second_kind values('02','������','02','������ҩ��')

go


/* �����±� "config_public_char"��                                                                 */
/* "config_public_char" : �����ֶ����ã�����н�����ã�ְ�����ã����������壬�ڽ�������������ò���������ޣ�ѧ��,רҵ���س������ã���ѵ��Ŀ����ѵ�ɼ���������Ŀ�������ȼ� */
/* 	"pbc_id" : �������Զ�������                                                                       */
/* 	"attribute_kind" : ���Ե�����                                                                  */
/* 	"attribute_name" : ���Ե�����                                                                  */  
create table "config_public_char" ( 
	"pbc_id" smallint identity not null,
	"attribute_kind" varchar(60) ,
	"attribute_name" varchar(60) )  

go

alter table "config_public_char"
	add constraint "config_public_char_PK" primary key ("pbc_id")   


go

insert into config_public_char values('����','�й�')
insert into config_public_char values('����','����')
insert into config_public_char values('����','����')
insert into config_public_char values('����','����')
insert into config_public_char values('�ڽ�����','��')
insert into config_public_char values('�ڽ�����','���')
insert into config_public_char values('������ò','��Ա')
insert into config_public_char values('������ò','Ⱥ��')
insert into config_public_char values('��������','12')
insert into config_public_char values('��������','16')
insert into config_public_char values('ѧ��','����')
insert into config_public_char values('ѧ��','��ר')
insert into config_public_char values('רҵ','���﹤��')
insert into config_public_char values('רҵ','�����')
insert into config_public_char values('�س�','���ݿ�')
insert into config_public_char values('�س�','java')
insert into config_public_char values('����','����')
insert into config_public_char values('����','�赸')
insert into config_public_char values('��ѵ��Ŀ','Ӣ��')
insert into config_public_char values('��ѵ��Ŀ','����')
insert into config_public_char values('��ѵ�ɼ�','A')
insert into config_public_char values('��ѵ�ɼ�','B')
insert into config_public_char values('������Ŀ','��������')
insert into config_public_char values('������Ŀ','���ۼ�Ч')
insert into config_public_char values('�����ȼ�','A')
insert into config_public_char values('�����ȼ�','B')
insert into config_public_char values('ְ��','����ʦ')
insert into config_public_char values('ְ��','����')
insert into config_public_char values('ְ��','����')
insert into config_public_char values('ְ��','����')
insert into config_public_char values('ְ��','��ʦ')
insert into config_public_char values('ְ��','����֧��')
insert into config_public_char values('н������','�����')
insert into config_public_char values('н������','��ͨ����')
insert into config_public_char values('н������','ס������')
insert into config_public_char values('н������','��������')
insert into config_public_char values('н������','���ս�')
insert into config_public_char values('н������','��Ͳ���')

go


/* �����±� "config_primary_key"��                                                                 */
/* "config_primary_key" : �ؼ������ã�����������Դ����н�귢�ţ�����������������н���׼����ѵ                               */
/* 	"prk_id" : �������Զ�������                                                                       */
/* 	"primary_key_table" : �ؼ������漰�����ݿ����                                                        */
/* 	"primary_key" : �ؼ���                                                                  */
/* 	"key_name" : ���Ĺؼ���                                                                  */
/* 	"primary_key_status" : �Ƿ�Ϊ�ؼ���                                                             */  
create table "config_primary_key" ( 
	"prk_id" smallint identity not null,
	"primary_key_table" varchar(60) null,
	"primary_key" varchar(60) null,
	"key_name" varchar(60) null,
	"primary_key_status" bit null)  

go

alter table "config_primary_key"
	add constraint "config_primary_key_PK" primary key ("prk_id")   


go


insert into config_primary_key values('HumanFile','firstKindName','I����������',1)
insert into config_primary_key values('HumanFile','secondKindName','II����������',1)
insert into config_primary_key values('HumanFile','thirdKindName','III����������',1)
insert into config_primary_key values('HumanFile','humanId','�������',1)
insert into config_primary_key values('HumanFile','humanName','����',1)
insert into config_primary_key values('HumanFile','humanAddress','סַ',1)
insert into config_primary_key values('HumanFile','humanPostcode','�ʱ�',1)
insert into config_primary_key values('HumanFile','humanProDesignation','ְ��',1)
insert into config_primary_key values('HumanFile','humanMajorKindName','ְλ��������',1)
insert into config_primary_key values('HumanFile','hunmaMajorName','ְλ����',1)
insert into config_primary_key values('HumanFile','humanBank','��������',1)
insert into config_primary_key values('HumanFile','humanAccount','�����ʺ�',1)
insert into config_primary_key values('HumanFile','humanTelephone','�绰',1)
insert into config_primary_key values('HumanFile','humanMobilephone','�ֻ�����',1)
insert into config_primary_key values('HumanFile','humanEmail','E-mail',1)
insert into config_primary_key values('HumanFile','humanHobby','����',1)
insert into config_primary_key values('HumanFile','humanSpeciality','�س�',1)
insert into config_primary_key values('HumanFile','humanSex','�Ա�',1)
insert into config_primary_key values('HumanFile','humanReligion','�ڽ�����',1)
insert into config_primary_key values('HumanFile','humanParty','������ò',1)
insert into config_primary_key values('HumanFile','humanNationality','����',1)
insert into config_primary_key values('HumanFile','humanRace','����',1)
insert into config_primary_key values('HumanFile','humanBirthday','����',1)
insert into config_primary_key values('HumanFile','humanBirthplace','������',1)
insert into config_primary_key values('HumanFile','humanAge','����',1)
insert into config_primary_key values('HumanFile','humanEducatedDegree','ѧ��',1)
insert into config_primary_key values('HumanFile','humanEducatedYears','��������',1)
insert into config_primary_key values('HumanFile','humanEducatedMajor','רҵ',1)
insert into config_primary_key values('HumanFile','humanSocietySecurityId','��ᱣ�Ϻ���',1)
insert into config_primary_key values('HumanFile','humanIdCard','���֤����',1)
insert into config_primary_key values('HumanFile','salaryStandardId','н���׼���',1)
insert into config_primary_key values('HumanFile','salaryStandardName','н���׼',1)
insert into config_primary_key values('HumanFile','majorChangeAmount','��������',1)
insert into config_primary_key values('HumanFile','bonusAmount','��������',1)
insert into config_primary_key values('HumanFile','trainingAmount','��ѵ����',1)
insert into config_primary_key values('HumanFile','fileChangAmount','�����������',1)
insert into config_primary_key values('HumanFile','remark','��ע',1)
insert into config_primary_key values('HumanFile','humanHistroyRecords','����',1)
insert into config_primary_key values('HumanFile','humanFamilyMembership','��ͥ��ϵ',1)
insert into config_primary_key values('HumanFile','register','�Ǽ���',1)
insert into config_primary_key values('SalaryStandard','standardId','н���׼���',1)
insert into config_primary_key values('SalaryStandard','standardName','н���׼����',1)
insert into config_primary_key values('SalaryStandard','designer','�����',1)
insert into config_primary_key values('SalaryGrant','salaryStandardId','н���׼���',1)
insert into config_primary_key values('SalaryGrant','salaryGrantId','н�귢�ű��',1)
insert into config_primary_key values('Bonus','majorKindName','ְλ��������',1)
insert into config_primary_key values('Bonus','majorName','ְλ����',1)
insert into config_primary_key values('Bonus','humanId','Ա�����',1)
insert into config_primary_key values('Bonus','humanName','ְԱ������',1)
insert into config_primary_key values('Bonus','bonusItem','������Ŀ',1)
insert into config_primary_key values('Bonus','bonusDegree','�����ȼ�',1)
insert into config_primary_key values('Bonus','remark','��ע',1)
insert into config_primary_key values('Training','majorKindName','ְλ��������',1)
insert into config_primary_key values('Training','majorName','ְλ����',1)
insert into config_primary_key values('Training','humanId','Ա�����',1)
insert into config_primary_key values('Training','humanName','ְԱ������',1)
insert into config_primary_key values('Training','trainingItem','��ѵ��Ŀ',1)
insert into config_primary_key values('Training','trainingDegree','��ѵ�ȼ�',1)
insert into config_primary_key values('Training','remark','��ע',1)
insert into config_primary_key values('MajorChange','firstKindName','I������',1)
insert into config_primary_key values('MajorChange','secondKindName','II������',1)
insert into config_primary_key values('MajorChange','thirdKindName','III������',1)
insert into config_primary_key values('MajorChange','majorKindName','ְλ����',1)
insert into config_primary_key values('MajorChange','majorName','ְλ',1)
insert into config_primary_key values('MajorChange','humanId','Ա�����',1)
insert into config_primary_key values('MajorChange','humanName','Ա������',1)
insert into config_primary_key values('MajorChange','changeReason','����ԭ��',1)

/* �����±� "config_major_kind"��                                                                  */
/* "config_major_kind" : ְλ��������                                                               */
/* 	"mfk_id" : �������Զ�������                                                                       */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : ְ����λ����                                                                */  
create table "config_major_kind" ( 
	"mfk_id" smallint identity not null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null)  

go

alter table "config_major_kind"
	add constraint "config_major_kind_PK" primary key ("mfk_id")   


go

insert into config_major_kind values('01','����')
insert into config_major_kind values('02','�������')
insert into config_major_kind values('03','������Դ')
insert into config_major_kind values('04','������')

go

/* �����±� "config_major"��                                                                       */
/* "config_major" : ְλ����                                                                      */
/* 	"mak_id" : �������Զ�������                                                                       */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : ְλ��������                                                                */
/* 	"major_id" : ְλ���                                                                         */
/* 	"major_name" : ְλ����                                                                       */ 
/* 	"test_amount" : ��������                                                                      */   
create table "config_major" ( 
	"mak_id" smallint identity not null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null,
	"major_id" char(2) null,
	"major_name" varchar(60) null,
	"test_amount" smallint null)  

go

alter table "config_major"
	add constraint "config_major_PK" primary key ("mak_id")   


go

insert into config_major values('01','����','01','������',0)
insert into config_major values('01','����','02','�ܾ���',0)
insert into config_major values('02','�������','01','��Ŀ����',0)
insert into config_major values('02','�������','02','����Ա',0)
insert into config_major values('03','������Դ','01','���¾���',0)
insert into config_major values('03','������Դ','02','רԱ',0)
insert into config_major values('04','������','01','����',0)
insert into config_major values('04','������','02','��������',0)

go


/* �����±� "HumanFile_dig"��                                                                     */
/* "human_file_dig" : ��¼������Դ�����������κθ���                                                         */
/* 	"hfd_id" : �������Զ�������                                                                       */
/* 	"human_id" : �������                                                                         */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"second_kind_id" : �����������                                                                 */
/* 	"second_kind_name" : ������������                                                               */
/* 	"third_kind_id" : �����������                                                                  */
/* 	"third_kind_name" : ������������                                                                */
/* 	"human_name" : ����                                                                         */
/* 	"human_address" : ��ַ                                                                      */
/* 	"human_postcode" : ��������                                                                   */
/* 	"human_pro_designation" : ְ��                                                              */
/* 	"human_major_kind_id" : ְλ������                                                            */
/* 	"human_major_kind_name" : ְλ��������                                                          */
/* 	"human_major_id" : ְλ���                                                                   */
/* 	"hunma_major_name" : ְλ����                                                                 */
/* 	"human_telephone" : �绰                                                                    */
/* 	"human_mobilephone" : �ֻ�����                                                                */
/* 	"human_bank" : ��������                                                                       */
/* 	"human_account" : �����ʺ�                                                                    */
/* 	"human_qq" : QQ����                                                                         */
/* 	"human_email" : �����ʼ�                                                                      */
/* 	"human_hobby" : ����                                                                        */
/* 	"human_speciality" : �س�                                                                   */
/* 	"human_sex" : �Ա�                                                                          */
/* 	"human_religion" : �ڽ�����                                                                   */
/* 	"human_party" : ������ò                                                                      */
/* 	"human_nationality" : ����                                                                  */
/* 	"human_race" : ����                                                                         */
/* 	"human_birthday" : ��������                                                                   */
/* 	"human_birthplace" : ������                                                                  */
/* 	"human_age" : ����                                                                          */
/* 	"human_educated_degree" : ѧ��                                                              */
/* 	"human_educated_years" : ��������                                                             */
/* 	"human_educated_major" : ѧ��רҵ                                                             */
/* 	"human_society_security_id" : ��ᱣ�Ϻ�                                                       */
/* 	"human_id_card" : ���֤��                                                                    */
/* 	"remark" : ��ע                                                                             */
/* 	"salary_standard_id" : н���׼���                                                             */
/* 	"salary_standard_name" : н���׼����                                                           */
/* 	"salary_sum" : ����н���ܶ�                                                                     */
/* 	"demand_salaray_sum" : Ӧ��н���ܶ�                                                             */
/* 	"paid_salary_sum" : ʵ��н���ܶ�                                                                */
/* 	"major_change_amount" : ��������                                                              */
/* 	"bonus_amount" : �����ۼƴ���                                                                   */
/* 	"training_amount" : ��ѵ�ۼƴ���                                                                */
/* 	"file_chang_amount" : ��������ۼƴ���                                                            */
/* 	"human_histroy_records" : ����                                                              */
/* 	"human_family_membership" : ��ͥ��ϵ                                                          */
/* 	"human_picture" : ��Ƭ                                                                      */
/* 	"attachment_name" : ��������                                                                  */
/* 	"check_status" : ����״̬                                                                     */
/* 	"register" : �����Ǽ���                                                                        */
/* 	"checker" : ����������                                                                         */
/* 	"changer" : ���������                                                                         */
/* 	"regist_time" : �����Ǽ�ʱ��                                                                    */
/* 	"check_time" : ��������ʱ��                                                                     */
/* 	"change_time" : �������ʱ��                                                                    */
/* 	"lastly_change_time" : �����������ʱ��                                                           */
/* 	"delete_time" : ����ɾ��ʱ��                                                                    */
/* 	"recovery_time" : �����ָ�ʱ��                                                                  */
/* 	"human_file_status" : ����״̬                                                                */  
create table "human_file_dig" ( 
	"hfd_id" smallint identity not null,
	"human_id" varchar(30) null,
	"first_kind_id" char(2) null,
	"first_kind_name" varchar(60) null,
	"second_kind_id" char(2) null,
	"second_kind_name" varchar(60) null,
	"third_kind_id" char(2) null,
	"third_kind_name" varchar(60) null,
	"human_name" varchar(60) null,
	"human_address" varchar(200) null,
	"human_postcode" varchar(10) null,
	"human_pro_designation" varchar(60) null,
	"human_major_kind_id" char(2) null,
	"human_major_kind_name" varchar(60) null,
	"human_major_id" char(2) null,
	"hunma_major_name" varchar(60) null,
	"human_telephone" varchar(20) null,
	"human_mobilephone" char(11) null,
	"human_bank" varchar(50) null,
	"human_account" varchar(30) null,
	"human_qq" varchar(15) null,
	"human_email" varchar(50) null,
	"human_hobby" varchar(60) null,
	"human_speciality" varchar(60) null,
	"human_sex" char(2) null,
	"human_religion" varchar(50) null,
	"human_party" varchar(50) null,
	"human_nationality" varchar(50) null,
	"human_race" varchar(50) null,
	"human_birthday" datetime null,
	"human_birthplace" varchar(50) null,
	"human_age" smallint null,
	"human_educated_degree" varchar(60) null,
	"human_educated_years" smallint null,
	"human_educated_major" varchar(60) null,
	"human_society_security_id" varchar(30) null,
	"human_id_card" varchar(20) not null,
	"remark" text null,
	"salary_standard_id" varchar(30) null,
	"salary_standard_name" varchar(60) null,
	"salary_sum" money null,
	"demand_salaray_sum" money null,
	"paid_salary_sum" money null,
	"major_change_amount" smallint null,
	"bonus_amount" smallint null,
	"training_amount" smallint null,
	"file_chang_amount" smallint null,
	"human_histroy_records" text null,
	"human_family_membership" text null,
	"human_picture" varchar(255) null,
	"attachment_name" varchar(255) null,
	"check_status" smallint null,
	"register" varchar(60) null,
	"checker" varchar(60) null,
	"changer" varchar(60) null,
	"regist_time" datetime null,
	"check_time" datetime null,
	"change_time" datetime null,
	"lastly_change_time" datetime null,
	"delete_time" datetime null,
	"recovery_time" datetime null,
	"human_file_status" bit null)  

go

alter table "human_file_dig"
	add constraint "human_file_dig_PK" primary key ("hfd_id")   


go


/* �����±� "human_file"��                                                                         */
/* "human_file" : ������Դ����                                                                      */
/* 	"huf_id" : �������Զ�������                                                                       */
/* 	"human_id" : �������                                                                         */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"second_kind_id" : �����������                                                                 */
/* 	"second_kind_name" : ������������                                                               */
/* 	"third_kind_id" : �����������                                                                  */
/* 	"third_kind_name" : ������������                                                                */
/* 	"human_name" : ����                                                                         */
/* 	"human_address" : ��ַ                                                                      */
/* 	"human_postcode" : ��������                                                                   */
/* 	"human_pro_designation" : ְ��                                                              */
/* 	"human_major_kind_id" : ְλ������                                                            */
/* 	"human_major_kind_name" : ְλ��������                                                          */
/* 	"human_major_id" : ְλ���                                                                   */
/* 	"hunma_major_name" : ְλ����                                                                 */
/* 	"human_telephone" : �绰                                                                    */
/* 	"human_mobilephone" : �ֻ�����                                                                */
/* 	"human_bank" : ��������                                                                       */
/* 	"human_account" : �����ʺ�                                                                    */
/* 	"human_qq" : QQ����                                                                         */
/* 	"human_email" : �����ʼ�                                                                      */
/* 	"human_hobby" : ����                                                                        */
/* 	"human_speciality" : �س�                                                                   */
/* 	"human_sex" : �Ա�                                                                          */
/* 	"human_religion" : �ڽ�����                                                                   */
/* 	"human_party" : ������ò                                                                      */
/* 	"human_nationality" : ����                                                                  */
/* 	"human_race" : ����                                                                         */
/* 	"human_birthday" : ��������                                                                   */
/* 	"human_birthplace" : ������                                                                  */
/* 	"human_age" : ����                                                                          */
/* 	"human_educated_degree" : ѧ��                                                              */
/* 	"human_educated_years" : ��������                                                             */
/* 	"human_educated_major" : ѧ��רҵ                                                             */
/* 	"human_society_security_id" : ��ᱣ�Ϻ�                                                       */
/* 	"human_id_card" : ���֤��                                                                    */
/* 	"remark" : ��ע                                                                             */
/* 	"salary_standard_id" : н���׼���                                                             */
/* 	"salary_standard_name" : н���׼����                                                           */
/* 	"salary_sum" : ����н���ܶ�                                                                     */
/* 	"demand_salaray_sum" : Ӧ��н���ܶ�                                                             */
/* 	"paid_salary_sum" : ʵ��н���ܶ�                                                                */
/* 	"major_change_amount" : ��������                                                              */
/* 	"bonus_amount" : �����ۼƴ���                                                                   */
/* 	"training_amount" : ��ѵ�ۼƴ���                                                                */
/* 	"file_chang_amount" : ��������ۼƴ���                                                            */
/* 	"human_histroy_records" : ����                                                              */
/* 	"human_family_membership" : ��ͥ��ϵ                                                          */
/* 	"human_picture" : ��Ƭ                                                                      */
/* 	"attachment_name" : ��������                                                                  */
/* 	"check_status" : ����״̬                                                                     */
/* 	"register" : �����Ǽ���                                                                        */
/* 	"checker" : ����������                                                                         */
/* 	"changer" : ���������                                                                         */
/* 	"regist_time" : �����Ǽ�ʱ��                                                                    */
/* 	"check_time" : ��������ʱ��                                                                     */
/* 	"change_time" : �������ʱ��                                                                    */
/* 	"lastly_change_time" : �����������ʱ��                                                           */
/* 	"delete_time" : ����ɾ��ʱ��                                                                    */
/* 	"recovery_time" : �����ָ�ʱ��                                                                  */
/* 	"human_file_status" : ����״̬                                                                */  
create table "human_file" ( 
	"huf_id" smallint identity not null,
	"human_id" varchar(30) null,
	"first_kind_id" char(2) null,
	"first_kind_name" varchar(60) null,
	"second_kind_id" char(2) null,
	"second_kind_name" varchar(60) null,
	"third_kind_id" char(2) null,
	"third_kind_name" varchar(60) null,
	"human_name" varchar(60) null,
	"human_address" varchar(200) null,
	"human_postcode" varchar(10) null,
	"human_pro_designation" varchar(60) null,
	"human_major_kind_id" char(2) null,
	"human_major_kind_name" varchar(60) null,
	"human_major_id" char(2) null,
	"hunma_major_name" varchar(60) null,
	"human_telephone" varchar(20) null,
	"human_mobilephone" char(11) null,
	"human_bank" varchar(50) null,
	"human_account" varchar(30) null,
	"human_qq" varchar(15) null,
	"human_email" varchar(50) null,
	"human_hobby" varchar(60) null,
	"human_speciality" varchar(60) null,
	"human_sex" char(2) null,
	"human_religion" varchar(50) null,
	"human_party" varchar(50) null,
	"human_nationality" varchar(50) null,
	"human_race" varchar(50) null,
	"human_birthday" datetime null,
	"human_birthplace" varchar(50) null,
	"human_age" smallint null,
	"human_educated_degree" varchar(60) null,
	"human_educated_years" smallint null,
	"human_educated_major" varchar(60) null,
	"human_society_security_id" varchar(30) null,
	"human_id_card" varchar(20) not null,
	"remark" text null,
	"salary_standard_id" varchar(30) null,
	"salary_standard_name" varchar(60) null,
	"salary_sum" money null,
	"demand_salaray_sum" money null,
	"paid_salary_sum" money null,
	"major_change_amount" smallint null,
	"bonus_amount" smallint null,
	"training_amount" smallint null,
	"file_chang_amount" smallint null,
	"human_histroy_records" text null,
	"human_family_membership" text null,
	"human_picture" varchar(255) null,
	"attachment_name" varchar(255) null,
	"check_status" smallint null,
	"register" varchar(60) null,
	"checker" varchar(60) null,
	"changer" varchar(60) null,
	"regist_time" datetime null,
	"check_time" datetime null,
	"change_time" datetime null,
	"lastly_change_time" datetime null,
	"delete_time" datetime null,
	"recovery_time" datetime null,
	"human_file_status" bit null)  

go

alter table "human_file"
	add constraint "human_file_PK" primary key ("huf_id")   


go

insert into human_file values('bt0101010001','01','Better����','01','Better�����˾','01','�����','fantia','��������','100091','����','02','�������','01','��Ŀ����',
'','13699175041','��������','123456879586584','26284795','26284795@qq.com','�赸','java','Ů','��','��Ա','�й�','����','1983-07-01','̫ԭ',24,'����','16','���﹤��','','140105198307010065',
'','','',0.00,0.00,0.00,0,0,0,0,'','','','',0,'admin','','','2007-05-31','','','','','',1)

go


/* �����±� "salary_standard_details"��                                                            */
/* "salary_standard_details" : н���׼����ϸ��Ϣ                                                      */
/* 	"sdt_id" : �������Զ�������                                                                       */
/* 	"standard_id" : н���׼�����                                                                   */
/* 	"standard_name" : н���׼������                                                                 */
/* 	"item_id" : н����Ŀ���                                                                        */
/* 	"item_name" : н����Ŀ����                                                                      */
/* 	"salary" : н����                                                                           */  
create table "salary_standard_details" ( 
	"sdt_id" smallint identity not null,
	"standard_id" varchar(30) null,
	"standard_name" varchar(60) null,
	"item_id" smallint null,
	"item_name" varchar(60) null,
	"salary" money null)  

go

alter table "salary_standard_details"
	add constraint "salary_standard_details_PK" primary key ("sdt_id")   


go

/* �����±� "salary_standard"��                                                                    */
/* "salary_standard" : н���׼������Ϣ��                                                              */
/* 	"ssd_id" : �������Զ�������                                                                       */
/* 	"standard_id" : н���׼�����                                                                   */
/* 	"standard_name" : н���׼������                                                                 */
/* 	"designer" : �ƶ�������                                                                        */
/* 	"register" : �Ǽ���                                                                          */
/* 	"checker" : ������                                                                           */
/* 	"changer" : �����                                                                           */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"check_time" : ����ʱ��                                                                       */
/* 	"change_time" : ���ʱ��                                                                      */
/* 	"salary_sum" : н���ܶ�                                                                       */
/* 	"check_status" : �Ƿ񾭹�����                                                                   */
/* 	"change_status" : ����״̬                                                                    */
/* 	"check_comment" : �������                                                                   */ 
/* 	"remark" : ��ע                                                                             */  
create table "salary_standard" ( 
	"ssd_id" smallint identity not null,
	"standard_id" varchar(30) null,
	"standard_name" varchar(60) null,
	"designer" varchar(60) null,
	"register" varchar(60) null,
	"checker" varchar(60) null,
	"changer" varchar(60) null,
	"regist_time" datetime null,
	"check_time" datetime null,
	"change_time" datetime null,
	"salary_sum" money null,
	"check_status" smallint null,
	"change_status" smallint null,
	"check_comment" text null,
	"remark" text null)  

go

alter table "salary_standard"
	add constraint "salary_standard_PK" primary key ("ssd_id")   


go

/* �����±� "bonus"��                                                                              */
/* "bonus" : �����ǼǱ�                                                                            */
/* 	"bon_id" : �������Զ�������                                                                       */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : ְλ��������                                                                */
/* 	"major_id" : ְλ���                                                                         */
/* 	"major_name" : ְλ����                                                                       */
/* 	"human_id" : ������Դ�������                                                                     */
/* 	"human_name" : ����                                                                         */
/* 	"bonus_item" : ������Ŀ����                                                                     */
/* 	"bonus_worth" : ������ֵ                                                                      */
/* 	"bonus_degree" : �����ȼ�                                                                     */
/* 	"remark" : ��ע                                                                             */
/* 	"register" : �Ǽ���                                                                          */
/* 	"checker" : ������                                                                           */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"check_time" : ����ʱ��                                                                       */
/* 	"check_status" : ����״̬                                                                     */  
create table "bonus" ( 
	"bon_id" smallint identity not null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null,
	"major_id" char(2) null,
	"major_name" varchar(60) null,
	"human_id" varchar(30) null,
	"human_name" varchar(60) null,
	"bonus_item" varchar(60) null,
	"bonus_worth" money null,
	"bonus_degree" varchar(60) null,
	"remark" text null,
	"register" varchar(60) null,
	"checker" varchar(60) null,
	"regist_time" datetime null,
	"check_time" datetime null,
	"check_status" smallint null)  

go

alter table "bonus"
	add constraint "bonus_PK" primary key ("bon_id")   


go

/* �����±� "training"��                                                                           */
/* "training" : ��ѵ�ǼǱ�                                                                         */
/* 	"tra_id" : �������Զ�������                                                                       */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : ְλ��������                                                                */
/* 	"major_id" : ְλ����                                                                         */
/* 	"major_name" : ְλ����                                                                       */
/* 	"human_id" : ������Դ�������                                                                     */
/* 	"human_name" : ����                                                                         */
/*	"training_item" ����ѵ��Ŀ										*/
/* 	"training_time" : ��ѵʱ��                                                                    */
/* 	"training_hour" : ��ѵ��ʱ                                                                    */
/* 	"training_degree" : ��ѵ�ɼ��ȼ�                                                                */
/* 	"register" : �Ǽ���                                                                          */
/* 	"checker" : ������                                                                           */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"check_time" : ����ʱ��                                                                       */
/* 	"checkstatus" : ��ѵ����״̬                                                                    */
/* 	"remark" : ��ע                                                                             */  
create table "training" ( 
	"tra_id" smallint identity not null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null,
	"major_id" char(2) null,
	"major_name" varchar(60) null,
	"human_id" varchar(30) null,
	"human_name" varchar(60) null,
	"training_item" varchar(60) null,
	"training_time" datetime null,
	"training_hour" int null,
	"training_degree" varchar(60) null,
	"register" varchar(60) null,
	"checker" varchar(60) null,
	"regist_time" datetime null,
	"check_time" datetime null,
	"checkstatus" smallint null,
	"remark" text null)  

go

alter table "training"
	add constraint "training_PK" primary key ("tra_id")   

go

/* �����±� "major_change"��                                                                       */
/* "major_change" : ְλ������                                                                     */
/* 	"mch_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"second_kind_id" : �����������                                                                 */
/* 	"second_kind_name" : ������������                                                               */
/* 	"third_kind_id" : �����������                                                                  */
/* 	"third_kind_name" : ������������                                                                */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : ְλ��������                                                                */
/* 	"major_id" : ְλ���                                                                         */
/* 	"major_name" : ְλ����                                                                       */
/* 	"new_first_kind_id" : ��һ���������                                                             */
/* 	"new_first_kind_name" : ��һ����������                                                           */
/* 	"new_second_kind_id" : �¶����������                                                            */
/* 	"new_second_kind_name" : �¶�����������                                                          */
/* 	"new_third_kind_id" : �������������                                                             */
/* 	"new_third_kind_name" : ��������������                                                           */
/* 	"new_major_kind_id" : ��ְλ������                                                             */
/* 	"new_major_kind_name" : ��ְλ��������                                                           */
/* 	"new_major_id" : ��ְλ���                                                                    */
/* 	"new_major_name" : ��ְλ����                                                                  */
/* 	"human_id" : ������Դ�������                                                                     */
/* 	"human_name" : ����                                                                         */
/* 	"salary_standard_id" : н���׼���                                                             */
/* 	"salary_standard_name" : н���׼����                                                           */
/* 	"salary_sum" : н���ܶ�                                                                       */
/* 	"new_salary_standard_id" : ��н���׼���                                                        */
/* 	"new_salary_standard_name" : ��н���׼����                                                      */
/* 	"new_salary_sum" : ��н���ܶ�                                                                  */
/* 	"change_reason" : ����ԭ��                                                                    */
/* 	"check_reason" : ���ͨ�����                                                                   */
/* 	"check_status" : ����ͨ��״̬                                                                   */
/* 	"register" : �Ǽ���                                                                          */
/* 	"checker" : ������                                                                           */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"check_time" : ����ʱ��                                                                       */  
create table "major_change" ( 
	"mch_id" smallint identity not null,
	"first_kind_id" char(2) null,
	"first_kind_name" varchar(60) null,
	"second_kind_id" char(2) null,
	"second_kind_name" varchar(60) null,
	"third_kind_id" char(2) null,
	"third_kind_name" varchar(60) null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null,
	"major_id" char(2) null,
	"major_name" varchar(60) null,
	"new_first_kind_id" char(2) null,
	"new_first_kind_name" varchar(60) null,
	"new_second_kind_id" char(2) null,
	"new_second_kind_name" varchar(60) null,
	"new_third_kind_id" char(2) null,
	"new_third_kind_name" varchar(60) null,
	"new_major_kind_id" char(2) null,
	"new_major_kind_name" varchar(60) null,
	"new_major_id" char(2) null,
	"new_major_name" varchar(60) null,
	"human_id" varchar(30) null,
	"human_name" varchar(60) null,
	"salary_standard_id" varchar(30) null,
	"salary_standard_name" varchar(60) null,
	"salary_sum" money null,
	"new_salary_standard_id" varchar(30) null,
	"new_salary_standard_name" varchar(60) null,
	"new_salary_sum" money null,
	"change_reason" text null,
	"check_reason" text null,
	"check_status" smallint null,
	"register" varchar(60) null,
	"checker" varchar(60) null,
	"regist_time" datetime null,
	"check_time" datetime null)  

go

alter table "major_change"
	add constraint "major_change_PK" primary key ("mch_id")   


go


/* �����±� "salary_grant"��                                                                       */
/* "salary_grant" : н�귢�ŵǼǱ�                                                                   */
/* 	"sgr_id" : �������Զ�������                                                                       */
/* 	"salary_grant_id" : н�귢�ű��                                                                */
/* 	"salary_standard_id" : н���׼�����                                                            */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"second_kind_id" : �����������                                                                 */
/* 	"second_kind_name" : ������������                                                               */
/* 	"third_kind_id" : �����������                                                                  */
/* 	"third_kind_name" : ������������                                                                */
/* 	"human_amount" : ������                                                                      */
/* 	"salary_standard_sum" : ��׼н���ܽ��                                                           */
/* 	"salary_paid_sum" : ʵ���ܽ��                                                                 */
/* 	"register" : �Ǽ���                                                                          */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"checker" : ������                                                                           */
/* 	"check_time" : ����ʱ��                                                                       */
/* 	"check_status" : ����״̬                                                                     */  
create table "salary_grant" ( 
	"sgr_id" smallint identity not null,
	"salary_grant_id" varchar(30) null,
	"salary_standard_id" varchar(30) null,
	"first_kind_id" char(2) null,
	"first_kind_name" varchar(60) null,
	"second_kind_id" char(2) null,
	"second_kind_name" varchar(60) null,
	"third_kind_id" char(2) null,
	"third_kind_name" varchar(60) null,
	"human_amount" smallint null,
	"salary_standard_sum" money null,
	"salary_paid_sum" money null,
	"register" varchar(60) null,
	"regist_time" datetime null,
	"checker" varchar(60) null,
	"check_time" datetime null,
	"check_status" smallint null)  

go

alter table "salary_grant"
	add constraint "salary_grant_PK" primary key ("sgr_id")   


go

/* �����±� "salary_grant_details"��                                                               */
/* "salary_grant_details" : н�귢����ϸ��Ϣ                                                          */
/* 	"grd_id" : �������Զ�������                                                                       */
/* 	"salary_grant_id" : н�귢�ű��                                                                */
/* 	"human_id" : �������                                                                         */
/* 	"human_name" : ����                                                                         */
/* 	"bouns_sum" : �������                                                                        */
/* 	"sale_sum" : ���ۼ�Ч���                                                                       */
/* 	"deduct_sum" : Ӧ�۽��                                                                       */
/* 	"salary_standard_sum" : ��׼н���ܶ�                                                            */
/* 	"salary_paid_sum" : ʵ��н���ܶ�                                                                */  
create table "salary_grant_details" ( 
	"grd_id" smallint identity not null,
	"salary_grant_id" varchar(30) null,
	"human_id" varchar(30) null,
	"human_name" varchar(60) null,
	"bouns_sum" money null,
	"sale_sum" money null,
	"deduct_sum" money null,
	"salary_standard_sum" money null,
	"salary_paid_sum" money null)  

go

alter table "salary_grant_details"
	add constraint "salary_grant_details_PK" primary key ("grd_id")   


go

/* �����±� "engage_major_release"��                                                               */
/* "engage_major_release" : ְλ����ǼǱ�                                                           */
/* 	"mre_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : һ���������                                                                  */
/* 	"first_kind_name" : һ����������                                                                */
/* 	"second_kind_id" : �����������                                                                 */
/* 	"second_kind_name" : ������������                                                               */
/* 	"third_kind_id" : �����������                                                                  */
/* 	"third_kind_name" : ������������                                                                */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : ְλ��������                                                                */
/* 	"major_id" : ְλ���                                                                         */
/* 	"major_name" : ְλ����                                                                       */
/* 	"human_amount" : ��Ƹ����                                                                     */
/* 	"engage_type" : ��Ƹ����                                                                      */
/* 	"deadline" : ��������                                                                         */
/* 	"register" : �Ǽ���                                                                          */
/* 	"changer" : �����                                                                           */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"change_time" : ���ʱ��                                                                      */
/* 	"major_describe" : ְλ����                                                                   */
/* 	"engage_required" : ��ƸҪ��                                                                  */  
create table "engage_major_release" ( 
	"mre_id" smallint identity not null,
	"first_kind_id" char(2) null,
	"first_kind_name" varchar(60) null,
	"second_kind_id" char(2) null,
	"second_kind_name" varchar(60) null,
	"third_kind_id" char(2) null,
	"third_kind_name" varchar(60) null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null,
	"major_id" char(2) null,
	"major_name" varchar(60) null,
	"human_amount" smallint null,
	"engage_type" varchar(60) null,
	"deadline" datetime null,
	"register" varchar(60) null,
	"changer" varchar(60) null,
	"regist_time" datetime null,
	"change_time" datetime null,
	"major_describe" text null,
	"engage_required" text null)  

go

alter table "engage_major_release"
	add constraint "engage_major_release_PK" primary key ("mre_id")   


go

/* �����±� "engage_exam_details"��                                                                */
/* "engage_exam_details" : �Ծ���ϸ��Ϣ                                                             */
/* 	"exd_id" : �������Զ�������                                                                       */
/* 	"exam_number" : �Ծ���                                                                      */
/* 	"first_kind_id" : ����һ��������                                                                */
/* 	"first_kind_name" : ����һ����������                                                              */
/* 	"second_kind_id" : �������������                                                               */
/* 	"second_kind_name" : ���������������                                                             */
/* 	"question_amount" : ��������                                                                  */  
create table "engage_exam_details" ( 
	"exd_id" smallint identity not null,
	"exam_number" varchar(30) null,
	"first_kind_id" char(2) null,
	"first_kind_name" varchar(60) null,
	"second_kind_id" char(2) null,
	"second_kind_name" varchar(60) null,
	"question_amount" smallint null)  

go

alter table "engage_exam_details"
	add constraint "engage_exam_details_PK" primary key ("exd_id")   


go

/* �����±� "engage_exam"��                                                                        */
/* "engage_exam" : �Ծ�ǼǱ�                                                                      */
/* 	"exa_id" : �������Զ�������                                                                       */
/* 	"exam_number" : �Ծ���                                                                      */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : ְλ��������                                                                */
/* 	"major_id" : ְλ���                                                                         */
/* 	"major_name" : ְλ����                                                                       */
/* 	"register" : �Ǽ���                                                                          */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"limite_time" : ������ʱ                                                                      */  
create table "engage_exam" ( 
	"exa_id" smallint identity not null,
	"exam_number" varchar(30) null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null,
	"major_id" char(2) null,
	"major_name" varchar(60) null,
	"register" varchar(60) null,
	"regist_time" datetime null,
	"limite_time" smallint null)  

go

alter table "engage_exam"
	add constraint "engage_exam_PK" primary key ("exa_id")   


go

/* �����±� "engage_answer"��                                                                      */
/* "engage_answer" : ���Դ���ǼǱ�                                                                  */
/* 	"ans_id" : �������Զ�������                                                                       */
/* 	"answer_number" : �𰸱��                                                                    */
/* 	"exam_number" : �Ծ���                                                                      */
/* 	"resume_id" : �������                                                                      */
/* 	"interview_id" : ���Ա��                                                                      */
/* 	"human_name" : ����                                                                         */
/* 	"human_idcard" : ���֤��                                                                     */
/* 	"major_kind_id" : ְλ������                                                                  */
/* 	"major_kind_name" : major_kind_name ���� engage_answer                                      */
/* 	"major_id" : major_id ���� engage_answer                                                    */
/* 	"major_name" : major_name ���� engage_answer                                                */
/* 	"test_time" : ����ʱ��                                                                        */
/* 	"use_time" : use_time ���� engage_answer                                                    */
/* 	"total_point" : �ܷ�                                                                        */  
create table "engage_answer" ( 
	"ans_id" smallint identity not null,
	"answer_number" varchar(30) null,
	"exam_number" varchar(30) null,
	"resume_id" smallint null,
	"interview_id" smallint null,
	"human_name" varchar(60) null,
	"human_idcard" varchar(30) null,
	"major_kind_id" char(2) null,
	"major_kind_name" char(10) null,
	"major_id" char(10) null,
	"major_name" char(10) null,
	"test_time" datetime null,
	"use_time" varchar(20) null,
	"total_point" numeric(5,2) null)  

go

alter table "engage_answer"
	add constraint "engage_answer_PK" primary key ("ans_id")   


go

/* �����±� "engage_answer_details"��                                                              */
/* "engage_answer_details" : ���Դ�����ϸ��Ϣ                                                         */
/* 	"and_id" : ����ϸ��Ϣ                                                                         */
/* 	"answer_number" : �𰸱��                                                                    */
/* 	"subject_id" : ������                                                                       */
/* 	"answer" : �����ߴ�                                                                          */  
create table "engage_answer_details" ( 
	"and_id" smallint identity not null,
	"answer_number" varchar(30) null,
	"subject_id" smallint null,
	"answer" varchar(10) null)  

go

alter table "engage_answer_details"
	add constraint "engage_answer_details_PK" primary key ("and_id")   


go

/* �����±� "engage_subjects"��                                                                    */
/* "engage_subjects" : �������ǼǱ�                                                                */
/* 	"sub_id" : �������Զ�������                                                                       */
/* 	"first_kind_id" : ����I��������                                                                */
/* 	"first_kind_name" : ����I����������                                                              */
/* 	"second_kind_id" : ����II��������                                                              */
/* 	"second_kind_name" : ����II����������                                                            */
/* 	"register" : �Ǽ���                                                                          */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"derivation" : �������                                                                       */
/* 	"content" : ���                                                                            */
/* 	"key_a" : ��a                                                                             */
/* 	"key_b" : ��b                                                                             */
/* 	"key_c" : ��c                                                                             */
/* 	"key_d" : ��d                                                                             */
/* 	"key_e" : ��e                                                                             */
/* 	"correct_key" : ��ȷ��                                                                      */
/* 	"changer" : �����                                                                           */
/* 	"change_time" : ���ʱ��                                                                      */  
create table "engage_subjects" ( 
	"sub_id" smallint identity not null,
	"first_kind_id" char(2) null,
	"first_kind_name" varchar(60) null,
	"second_kind_id" char(2) null,
	"second_kind_name" varchar(60) null,
	"register" varchar(60) null,
	"regist_time" datetime null,
	"derivation" varchar(60) null,
	"content" text null,
	"key_a" text null,
	"key_b" text null,
	"key_c" text null,
	"key_d" text null,
	"key_e" text null,
	"correct_key" varchar(10) null,
	"changer" varchar(60) null,
	"change_time" datetime null)  

go

alter table "engage_subjects"
	add constraint "engage_subjects_PK" primary key ("sub_id")   


go

/* �����±� "engage_resume"��                                                                      */
/* "engage_resume" : ��������                                                                     */
/* 	"res_id" : �������Զ�������                                                                       */
/* 	"human_name" : ����                                                                         */
/* 	"engage_type" : ��Ƹ����                                                                      */
/* 	"human_address" : ��ַ                                                                      */
/* 	"human_postcode" : �ʱ�                                                                     */
/* 	"human_major_kind_id" : ְλ������                                                            */
/* 	"human_major_kind_name" : ְλ��������                                                          */
/* 	"human_major_id" : ְλ���                                                                   */
/* 	"human_major_name" : ְλ����                                                                 */
/* 	"human_telephone" : �绰����                                                                  */
/* 	"human_homephone" : ��ͥ�绰                                                                  */
/* 	"human_mobilephone" : �ֻ�                                                                  */
/* 	"human_email" : Email                                                                     */
/* 	"human_hobby" : ��Ȥ����                                                                      */
/* 	"human_specility" : �س�                                                                    */
/* 	"human_sex" : �Ա�                                                                          */
/* 	"human_religion" : �ڽ�����                                                                   */
/* 	"human_party" : ������ò                                                                      */
/* 	"human_nationality" : ����                                                                  */
/* 	"human_race" : ����                                                                         */
/* 	"human_birthday" : ����                                                                     */
/* 	"human_age" : ����                                                                          */
/* 	"human_educated_degree" : �����̶�                                                            */
/* 	"human_educated_years" : ��������                                                             */
/* 	"human_educated_major" : רҵ                                                               */
/* 	"human_college" : ��ҵԺУ                                                                    */
/* 	"human_idcard" : ���֤��                                                                     */
/* 	"human_birthplace" : ������                                                                  */
/* 	"demand_salary_standard" : н���׼                                                           */
/* 	"human_history_records" : ��������                                                            */
/* 	"remark" : ��ע                                                                             */
/* 	"recomandation" : �Ƽ����                                                                    */
/* 	"human_picture" : ��Ƭ                                                                      */
/* 	"attachment_name" : ��������                                                                  */
/* 	"check_status" : ����״̬                                                                     */
/* 	"register" : �Ǽ���                                                                          */
/* 	"regist_time" : �Ǽ�ʱ��                                                                      */
/* 	"checker" : ����������                                                                         */
/* 	"check_time" : ����ʱ��                                                                       */
/* 	"interview_status" : ����״̬                                                                 */
/* 	"total_points" : �ܷ�                                                                       */
/* 	"test_amount" : ���Դ���                                                                      */
/* 	"test_checker" : ���Ը�����                                                                    */
/* 	"test_check_time" : ���Ը���ʱ��                                                                */
/* 	"pass_register" : ͨ���Ǽ�������                                                                 */
/* 	"pass_regist_time" : ͨ���Ǽ�ʱ��                                                               */
/* 	"pass_checker" : ͨ������������                                                                  */
/* 	"pass_check_time" : ͨ������ʱ��                                                                */
/* 	"pass_check_status" : ͨ���ĸ���״̬
	"pass_checkComment":¼������������
	"pass_passComment":¼�������������                                                            */  
create table "engage_resume" ( 
	"res_id" smallint identity not null,
	"human_name" varchar(60) null,
	"engage_type" varchar(30) null,
	"human_address" varchar(200) null,
	"human_postcode" varchar(10) null,
	"human_major_kind_id" char(2) null,
	"human_major_kind_name" varchar(60) null,
	"human_major_id" char(2) null,
	"human_major_name" varchar(60) null,
	"human_telephone" varchar(60) null,
	"human_homephone" varchar(60) null,
	"human_mobilephone" varchar(60) null,
	"human_email" varchar(60) null,
	"human_hobby" varchar(200) null,
	"human_specility" varchar(200) null,
	"human_sex" char(2) null,
	"human_religion" varchar(60) null,
	"human_party" varchar(60) null,
	"human_nationality" varchar(60) null,
	"human_race" varchar(60) null,
	"human_birthday" datetime null,
	"human_age" smallint null,
	"human_educated_degree" varchar(60) null,
	"human_educated_years" smallint null,
	"human_educated_major" varchar(60) null,
	"human_college" varchar(60) null,
	"human_idcard" varchar(60) null,
	"human_birthplace" varchar(200) null,
	"demand_salary_standard" numeric(15,2) null,
	"human_history_records" text null,
	"remark" text null,
	"recomandation" text null,
	"human_picture" varchar(60) null,
	"attachment_name" varchar(60) null,
	"check_status" smallint null,
	"register" varchar(60) null,
	"regist_time" datetime null,
	"checker" varchar(60) null,
	"check_time" datetime null,
	"interview_status" smallint null,
	"total_points" float null,
	"test_amount" smallint null,
	"test_checker" varchar(60) null,
	"test_check_time" datetime null,
	"pass_register" varchar(60) null,
	"pass_regist_time" datetime null,
	"pass_checker" varchar(60) null,
	"pass_check_time" datetime null,
	"pass_check_status" smallint null,
	"pass_checkComment" varchar(60) null,
	"pass_passComment" varchar(60) null
)  

go

alter table "engage_resume"
	add constraint "engage_resume_PK" primary key ("res_id")   


go

/* �����±� "engage_interview"��                                                                   */
/* "engage_interview" : ���Ա�                                                                   */
/* 	"ein_id" : �������Զ�������                                                                       */
/* 	"human_name" : ����                                                                         */
/* 	"interview_amount" : ���Դ���                                                                 */
/* 	"human_major_kind_id" : ְλ������                                                            */
/* 	"human_major_kind_name" : ְλ��������                                                          */
/* 	"human_major_id" : ְλ���                                                                   */
/* 	"human_major_name" : ְλ����                                                                 */
/* 	"image_degree" : ����ȼ�                                                                     */
/* 	"native_language_degree" : �ڲŵȼ�                                                           */
/* 	"foreign_language_degree" : ����ˮƽ�ȼ�                                                        */
/* 	"response_speed_degree" : Ӧ������                                                            */
/* 	"EQ_degree" : EQ�ȼ�                                                                        */
/* 	"IQ_degree" : IQ_�ȼ�                                                                       */
/* 	"multi_quality_degree" : �ۺ�����                                                             */
/* 	"register" : ������                                                                          */
/* 	"checker" : ɸѡ��                                                                           */
/* 	"registe_time" : ����ʱ��                                                                     */
/* 	"check_time" : ɸѡʱ��                                                                       */
/* 	"resume_id" : �������                                                                        */
/* 	"result" : ���Խ��                                                                           */
/* 	"interview_comment" : ��������                                                                */
/* 	"check_comment" : ɸѡ����                                                                    */
/* 	"interview_status" : ����״̬                                                                 */
/* 	"check_status" : ɸѡ״̬                                                                     */  
create table "engage_interview" ( 
	"ein_id" smallint identity not null,
	"human_name" varchar(60) null,
	"interview_amount" smallint null,
	"human_major_kind_id" char(2) null,
	"human_major_kind_name" varchar(30) null,
	"human_major_id" char(2) null,
	"human_major_name" varchar(30) null,
	"image_degree" varchar(20) null,
	"native_language_degree" varchar(20) null,
	"foreign_language_degree" varchar(20) null,
	"response_speed_degree" varchar(20) null,
	"EQ_degree" varchar(20) null,
	"IQ_degree" varchar(20) null,
	"multi_quality_degree" varchar(20) null,
	"register" varchar(60) null,
	"checker" varchar(60) null,
	"registe_time" datetime null,
	"check_time" datetime null,
	"resume_id" smallint null,
	"result" varchar(20) null,
	"interview_comment" text null,
	"check_comment" text null,
	"interview_status" smallint null,
	"check_status" smallint null)  

go

alter table "engage_interview"
	add constraint "engage_interview_PK" primary key ("ein_id")   


go


/* ���� Microsoft Visual Studio ���ɵ� SQL DDL �ű���ĩβ��                                              */
