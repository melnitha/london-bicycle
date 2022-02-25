#london-bicycle
SQL queries based on london bicycle trips.

1)Selecting all bicycle hires where the station id is 26.

select * from bigquery-public-data.london_bicycles.cycle_hire where end_station_id=126;
 
![image](https://user-images.githubusercontent.com/100420338/155718811-83f33068-ee8b-4d73-81cc-3943282ebfae.png)


2)Selecting all bicycle hires where the start and end station is same.

select rental_id,bike_id,start_station_id,end_station_id from bigquery-public-data.london_bicycles.cycle_hire where end_station_id=start_station_id;

![image](https://user-images.githubusercontent.com/100420338/155718863-255abb7d-7b8a-408c-bf0f-425d33bdf65a.png)
 

3)Selecting all bicycle trips where duration is greater than 10000.

select rental_id,bike_id,duration from bigquery-public-data.london_bicycles.cycle_hire where duration>10000;
 
 ![image](https://user-images.githubusercontent.com/100420338/155718890-965406d3-26d6-4ef8-852a-5eef3704c3df.png)

 
4)Selecting all trips which occured on the same day.

select rental_id,bike_id,duration from bigquery-public-data.london_bicycles.cycle_hire where start_date=end_date;

 ![image](https://user-images.githubusercontent.com/100420338/155718911-a446668c-f2a3-4af9-b868-95477b82ef61.png)


5)Selecting trip with the maximum duration

select rental_id,bike_id,duration from bigquery-public-data.london_bicycles.cycle_hire where duration=(select max(duration) from bigquery-public-data.london_bicycles.cycle_hire);

 ![image](https://user-images.githubusercontent.com/100420338/155718940-bd278d15-326c-48b5-93de-5cae75178093.png)


6)Selecting the day of first and last trip start date.

select min(start_date) as first_start,max(start_date) as last_start from bigquery-public-data.london_bicycles.cycle_hire 
 
 ![image](https://user-images.githubusercontent.com/100420338/155718966-7bdd410e-b3d3-4c8f-a709-0ee466949075.png)


7)Finding out of total number of bikes.

select count(DISTINCT bike_id) as num_bike from bigquery-public-data.london_bicycles.cycle_hire 
 
 ![image](https://user-images.githubusercontent.com/100420338/155719001-5e74c385-fbf2-4ca8-8f4d-6ccaa9847c70.png)

 
8)Join query to find all usable stations.

select rental_id,bike_id,start_station_id,end_station_id from bigquery-public-data.london_bicycles.cycle_hire as cyclehire join bigquery-public-data.london_bicycles.cycle_stations as cyclestations on cyclehire.start_station_id=cyclestations.id;
 
 ![image](https://user-images.githubusercontent.com/100420338/155719023-ef405134-023d-480a-b20f-969cf5bea751.png)

 
9)Join query to find all trips on '2011-02-24'

select rental_id,bike_id,start_station_id,end_station_id from bigquery-public-data.london_bicycles.cycle_hire as cyclehire join bigquery-public-data.london_bicycles.cycle_stations as cyclestations on cyclehire.start_station_id=cyclestations.id and cyclestations.install_date='2011-02-24';
 
 ![image](https://user-images.githubusercontent.com/100420338/155719043-fff569bb-dcc5-4d0c-9528-82653a3f881a.png)

 
10)Join query to find all staions with docks more than 18. 

select rental_id,bike_id,start_station_id,start_station_name from bigquery-public-data.london_bicycles.cycle_hire as cyclehire join bigquery-public-data.london_bicycles.cycle_stations as cyclestations on cyclehire.start_station_id=cyclestations.id and cyclestations.docks_count>18;
 
![image](https://user-images.githubusercontent.com/100420338/155719066-aed2a1f4-2d76-4c08-9554-4f319ab485b9.png)
