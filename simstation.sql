select rental_id,bike_id,start_station_id,end_station_id from bigquery-public-data.london_bicycles.cycle_hire as cyclehire join bigquery-public-data.london_bicycles.cycle_stations as cyclestations on cyclehire.start_station_id=cyclestations.id;