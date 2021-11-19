--insert into Membership values('Member11', '1234567890', '640000011', null, null, 1, GETDATE())
--insert into Membership values('Member12', '1234567890', '640000012', null, null, 1, GETDATE())
--insert into Membership values('Member13', '1234567890', '640000013', null, null, 1, GETDATE())
--insert into Membership values('Member14', '1234567890', '640000014', null, null, 1, GETDATE())
--insert into Membership values('Member15', '1234567890', '640000015', null, null, 1, GETDATE())
--Create Table MemberProfile
--(
--	MemberId int primary key,
--	AccountNo nvarchar(100) not null,
--	Firstname nvarchar(100), 
--	Laastname nvarchar(100)
--)

--select * from Membership
--where Id Not In(1,3,6,7)

--select * from MemberProfile

--update MemberProfile set CreatedDate = GETDATE()

--Insert into MemberProfile
--select Id, AccountNo, Firstname, Lastname 
--from Membership where Id >= 3 and Id <= 10

--alter table membership
--drop column AccountNo, Firstname, Lastname

--alter table memberprofile
--add CreatedDate datetime

--alter table memberprofile drop column CreatedDate

--alter table memberprofile
--add CreatedDate datetime not null default getdate()


-- Inner join
-- select * from Membership M, MemberProfile P where M.Id = P.MemberId
-- select * from Membership M Inner Join MemberProfile P ON M.Id = P.MemberId

-- Left Join
-- Select * From Membership M Left Join MemberProfile P On M.Id = P.MemberId

-- Right Join
-- Select * From Membership M Right Join MemberProfile P On M.Id = P.MemberId

-- IN
-- Select * From Membership where Id IN(select MemberId from MemberProfile)
-- Select * From Membership where Id Not IN(select MemberId from MemberProfile)

-- Union
-- Select * From Membership where Id IN(select MemberId from MemberProfile) or Id IN(1,2)
-- Union
-- Select * From Membership where Id Not IN(select MemberId from MemberProfile)

--alter table MemberProfile add Salary decimal(10, 4) 
--alter table MemberProfile add MemberGroup nvarchar(100)

--update MemberProfile set MemberGroup = 'Group1' Where MemberId <= 6
--update MemberProfile set MemberGroup = 'Group2' Where MemberId > 6


--select * from MemberProfile 

-- sum + count
--select 
----ISNULL(MemberGroup, '')
--	Case When MemberGroup = '' or MemberGroup is null then '' else MemberGroup end
--	, SUM(Salary) TotalSalary
--	, SUM(Case When MemberGroup = 'Group1' then 1 
--			When MemberGroup = 'Group2' then 1
--			When MemberGroup = '' or MemberGroup is null then -1
--			else 0 end)
--	--, COUNT(Case When MemberGroup = 'Group1' then 1 
--	--		When MemberGroup = 'Group2' then 10
--	--		When MemberGroup is null then -1
--	--		else 0 end)
--	--, COUNT(Case When MemberGroup <> '' then 1 
--	--		When MemberGroup is null then -1
--	--		else 0 end) As CountRows
--from MemberProfile M
--group by (Case When MemberGroup = '' or MemberGroup is null then '' else MemberGroup end)
----ISNULL(MemberGroup, '')


--select SUM(1) from MemberProfile
--select COUNT(1) from MemberProfile


--insert into MemberProfile(MemberId, AccountNo, Firstname, Lastname, Salary, MemberGroup) 
--values(20, '640000020', null, null, 19999, null)

--insert into MemberProfile values(30, '640000030', null, null, GETDATE(), 552258, '')
--insert into MemberProfile values(31, '640000031', null, null, GETDATE(), 85475, '')

--create view View_MemberGroup As
--select Case When MemberGroup = '' or MemberGroup is null then '' else MemberGroup end MemberGroup
--	, SUM(Salary) TotalSalary
--	, SUM(Case When MemberGroup = 'Group1' then 1 
--			When MemberGroup = 'Group2' then 1
--			When MemberGroup = '' or MemberGroup is null then -1
--			else 0 end) CountRow
--from MemberProfile M
--group by (Case When MemberGroup = '' or MemberGroup is null then '' else MemberGroup end)

--select * from View_MemberGroup

--create view VIEW_CRUD_MemberProfile as 
--select * from MemberProfile

--select * from VIEW_CRUD_MemberProfile

--insert into VIEW_CRUD_MemberProfile values(40, '640000040', null, null, GETDATE(), 112355, 'Group4')

--delete from VIEW_CRUD_MemberProfile where memberid = 40

-- select * from MemberProfile where MemberId between 3 and 10

--select * from
--(
--select MemberGroup, COUNT(1) CountRow
--from MemberProfile
--group by MemberGroup
--) s
--where CountRow >= 4

--select MemberGroup, SUM(Salary), COUNT(1) CountRow
--from MemberProfile
--group by MemberGroup
--having count(1) > 0 And SUM(Salary) > 36000

--select * from 
--(
--	Values('Sunday', 'วันอาทิตย์', 10), ('Monday', 'วันจันทร์', 2), ('Tuesday', 'วันอังคาร', 5)
--) As T(DayEN, DayTH, Value)

--select * 
--	, AccountNo + ' ' + Firstname + ' ' + CONVERT(nvarchar(100), MemberId)
--from MemberProfile



