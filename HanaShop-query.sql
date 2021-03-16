select * from [dbo].[tblFood] where [foodName] like N'%đào%'
select min(price) from tblFood
select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= (select min(price) from tblFood) 
and price <= (select max(price) from tblFood) and categoryId = 'N001'

SELECT [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] FROM [dbo].[tblFood] where status=1  and [quantity] > 0 and foodName like N'%chanh%' ORDER by [createDate] asc

select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= 1000 from tblFood) 
and price <=  100000

select [categoryId],[categoryName],[status] from [dbo].[tblCategory] where status = 1


select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= 1000
and price <=  100000 and categoryId = N001

select count(foodId) as soluong from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= (select min(price) from tblFood) 
and price <= (select max(price) from tblFood) and categoryId = 'N001'

select count(foodId) as soluong from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= (select min(price) from tblFood)
						and price <= (select max(price) from tblFood)

						select count(foodId) as soluong from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= (select min(price) from tblFood) 
and price <= (select max(price) from tblFood)

with tblTemp as(select ROW_NUMBER() over ( order by [createDate] asc) as num,[foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= 1000 
and price <= 100000 and categoryId = ) select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from tblTemp where num between 1 and 20


select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%" + txtSearch + "%' and status=1  and [quantity] > 0 and price >= " + minPrice + "\n"
							+ "and price <=  " + maxPrice

--1 1-20         index*20-19 index*20 
--2 21-40
--3 41-60


with tblTemp as(select ROW_NUMBER() over ( order by [createDate] asc) as num,[foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= 1000
and price <=  100000) select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from tblTemp where num between 1 and 20



with tblTemp as(select ROW_NUMBER() over ( order by [createDate] asc) as num,[foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%%' and status=1  and [quantity] > 0 and price >= 
and price <=  ) select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from tblTemp where num between 1 and 20

select max(price) as max from tblFood