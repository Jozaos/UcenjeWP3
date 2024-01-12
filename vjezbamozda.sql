select * from territories;

select *
from Territories a inner join Region b on a.RegionID=b.RegionID
where a.TerritoryDescription='New York';


select *
from Territories a inner join Region b on a.regionID=b.RegionID
where a.regionid='3';