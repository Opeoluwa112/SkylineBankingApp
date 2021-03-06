

create table Accountusers
( 
 iAu char(4)constraint iAu primary key clustered,
 cusername char(10) not null,
 cpassword char (10) not null,
)

create table StaffDetails
(
 idNo char(6) constraint pkidNo primary key clustered,
 vName varchar(25) not null,
 vSurname varchar(25) not null,
 vPhoneNo char(16) not null,
 iAge int not null,
 cSex char (7)
)
 
create table CustomersAcct
( 
  iAcNo int identity(1000000001,1) constraint pkiAcNo primary key clustered,
  vCusName varchar(25) not null,
  vCusSurname varchar(25) not null,
  vSex char(7),
  vAddress varchar(30) not null,
  cPhoneNo char(16) not null,
  dDate datetime constraint def default getdate(),
  mBal money not null constraint chkmoney check (mBal>=1000),
  idNo char(6) constraint fkidNo Foreign Key references StaffDetails(idNo) not null
)

create table withdAccount
( 
  SlipNo int IDENTITY(1001,1) CONSTRAINT pkslipNo primary key clustered,
  iAcNo int constraint fkiAcNo foreign key references CustomersAcct(iAcNo) NOT NULL,
  Amtwithdrawn money NOT null,
  Amtinwords char(35) Not null,
  WithdDate datetime CONSTRAINT defau DEFAULT getdate()
) 

 create table depositAccount
(
  dSlipNo int IDENTITY(1001,1) CONSTRAINT pkdslipNo primary key clustered,
  iAcNo int constraint fkdAcNo foreign key references CustomersAcct(iAcNo) NOT NULL,
  AmtDeposited money NOT null,
  Amtinwords char(35) Not null,
  depDate datetime CONSTRAINT deffau DEFAULT getdate()
) 

select*
from depositAccount

update depoditAccount
from dAcNo
from CustomersAcct

insert CustomersAcct(vCusName,vCusSurname,vSex,vAddress,cPhoneNo,mBal,idNo)
values ('Hallie','Berry','Female','Abuja','081111319204','1000000,000','0002')

insert CustomersAcct(vCusName,vCusSurname,vSex,vAddress,cPhoneNo,mBal,idNo)
values ('Opeoluwa','Eweje','Male','Abuja','08132517824','1,000,000','0002')

select*
from StaffDetails

insert depositAccount(iAcNo,AmtDeposited,Amtinwords)
values ('1000000003','30000','Thirty thousand naira')

insert depositAccount(iAcNo,AmtDeposited,Amtinwords)
values ('1000000004','40000','Forty thousand naira')

insert StaffDetails(idNo,vName,vSurname,vPhoneNo,iAge,cSex)
values ('0001','Jude','Kelechi','08033441224','37','Male')

insert StaffDetails(idNo,vName,vSurname,vPhoneNo,iAge,cSex)
values ('0002','Avan','Dalton','08055331224','29','Male')

insert StaffDetails(idNo,vName,vSurname,vPhoneNo,iAge,cSex)
values ('0003','Timothy','Uto','08063567931','36','Male')

insert StaffDetails(idNo,vName,vSurname,vPhoneNo,iAge,cSex)
values ('0004','Iseoluwa','Dayo','080635672298','25','Female')


insert StaffDetails(idNo,vName,vSurname,vPhoneNo,iAge,cSex)
values ('0001','Olaoluwa','Stevens','080635672298','25','Male')

select*
from withdAccount

insert withdAccount(iAcNo,Amtwithdrawn,Amtinwords)
values ('1000000002','300,0000','Three hundred thousand naira')

insert withdAccount(iAcNo,Amtwithdrawn,Amtinwords)
values ('1000000002','300,0000','Three hundred thousand naira')

select vCusName,vCusSurname,AmtDeposited,Date,AmtWithdrawn,Date
from CustomersAcct join depositAccount join withdAccount
on CustomersAcct.iAcNo=depositAccount.dAcNo=withdAccount.iAcNo

create view CustomersDetails
as
select vCusName,vCusSurname,AmtWithdrawn,withdDate,AmtDeposited,depDate
from CustomersAcct join withdAccount
on CustomersAcct.iAcNo=withdAccount.iAcNo join depositAccount on depositAccount.iAcNo=CustomersAcct.iAcNo

delete 
from depositAccount
where dSlipNo='1007'

select*
from Accountusers

insert Accountusers (iAu,cusername,cpassword)
values ('001','Eweje','Opeoluwa')

select*
from CustomersAcct


select *
from depositAccount
select count(*) 'Number of Records'
from depositAccount

declare @count int
select @count=0
while @count <= 11
begin
select @count= @count +1
print @count
end