select *
from staffdetails


insert staffdetails(idNo,vName,vSurname,vPhoneNo,iAge,cSex)
values ('0006','Dare','Adegbenro','07045233333','20','Male')
select *
from customersAcct

select *
from depositAccount

select *
from withdAccount

insert depositAccount(iAcNo,AmtDeposited,Amtinwords)
values ('1000000004','10000','Ten thousand naira')

insert withdAccount(iAcNo,Amtwithdrawn)
values ('1000000004','1000000')

sp_help CustomersAcct
alter table CustomersAcct
drop constraint chk money

select*
from CustomersAcct

insert CustomersAcct(vCusName,vCusSurname,vSex,vAddress,cPhoneNo,mBal,idNo)
values ('Funke','Lawson','Female','Port-Harcourt','08033255533','20000000','0001')


drop trigger trgwithd
create Trigger trgwithd
on withdAccount
for insert
as
declare @Acode int
declare @amt money
select @Acode= inserted.iAcNo , @amt=Amtwithdrawn
from inserted
begin 
update CustomersAcct
set mbal = mbal - @amt
where iAcNo = @Acode
end


create Trigger trgdeposit
on depositAccount
for insert
as
declare @Acode int
declare @amt money
select @Acode= inserted.iAcNo , @amt=Amtdeposited
from inserted
begin 
update CustomersAcct
set mbal = mbal + @amt
where iAcNo = @Acode
end



sp_help CustomersAcct


ALTER TABLE CustomersAcct
Drop constraint chkmoney

select*
from withdAccount

sp_rename 'withdAccount.iAcNo', 'iAcNo'

create Trigger trgwithd
on withdAccount
for insert
as
declare @amt money
declare @diffAmt money
declare @Acode int
declare @oriAmt money
select  @Acode = inserted.iAcNo, @amt=Amtwithdrawn
from Inserted
begin 
select @diffAmt =mbal - @amt from CustomersAcct where iAcNo=@Acode
if @oriAmt <= 500 OR @diffAmt <= 500
begin 
print 'You cannot withdrawl, at least a minimum of #500 should be left in your account'
rollback tran
end
else
begin
update CustomersAcct
set mbal = mbal - @amt
where iAcNo = @Acode
end
end

select *
from Accountusers

insert Accountusers(iAu,cusername,cpassword)
values ('0001','Eweje','Opeoluwa')





