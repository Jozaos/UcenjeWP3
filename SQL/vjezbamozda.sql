select * from territories;

select *
from Territories a inner join Region b on a.RegionID=b.RegionID
where a.TerritoryDescription='New York';


select *
from Territories a inner join Region b on a.regionID=b.RegionID
where a.regionid='3';

select a.CategoryName as Kategorija, b.ProductName as Proizvod, concat(c.CompanyName,', ',c.City) as Dobavljač
from Categories a 
inner join Products b on a.CategoryID=b.CategoryID
inner join Suppliers c on b.SupplierID=c.SupplierID
where a.CategoryName='Beverages';

select a.ProductName as Ime
from Products a left join Categories b on a.CategoryID=b.CategoryID
where b.CategoryID = 3;


--vježba update
select * from Categories
update Categories set CategoryName = 'Pice' where CategoryID = 1;
update Categories set CategoryName = 'Umaci i slicno' where CategoryID = 2;
update Categories set CategoryName = 'Desertici' where CategoryID = 3;
update Categories set CategoryName = 'SIIIIIIIIIR' where CategoryID = 4;

