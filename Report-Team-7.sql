
--Query to find the passenger details whose baggage is not delivered and to find its last location

select First_name, last_name, email, phonenumber, check_point_name as last_location 
from (select * from delivery where date_time in (select max(date_time) from delivery group by bag_id) and delivery_status='NO') d join baggage b
on d.BAG_ID=b.BAG_ID
join TRAVELINFO t
on b.PASSENGER_ID=t.T_PASSENGER_ID and to_char(d.date_time,'DD/MON/YYYY')=to_char(t.travel_date,'DD/MON/YYYY') and b.FLIGHT_ID=t.T_FLIGHT_ID  JOIN PASSENGER P ON b.passenger_id=p.passenger_id
join flight f 
on b.FLIGHT_ID=f.FLIGHT_ID
join check_point c
on d.check_id=c.check_id;


--Query to find the average time taken in minutes to load the bag into the flight after check-in and time taken to deliver the baggage to passenger after unloading it from flight at destination
--Comparing the time taken at multiple points, the company can look for enhancements at such positions where the time taken is maximum

select Round(24*60*avg(T1),3) as "Avg time to unload in minutes", Round(24*60*avg(T2),3) as "Avg time to load in minutes" 
from
(
select d1.bag_id,max(d1.Arr),min(d1.Arr),max(d1.Arr)-min(d1.Arr) as T1,max(d1.Dep),min(d1.Dep),max(d1.Dep)-min(d1.Dep) as T2
from(
select bag_id, 
case check_id
when 'L001' then date_time
when 'L002' then date_time
when 'L003' then date_time
else null
end Dep,
case check_id
when 'L004' then date_time
when 'L005' then date_time
else null
end Arr
from delivery) d1 join (select distinct(bag_id) from delivery where delivery_status='YES') d2
--only checking for the baggage which are delivered
on d1.bag_id=d2.bag_id
group by d1.bag_id order by d1.bag_id
)
;

