select rental_id,bike_id,start_station_id,start_station_name from bigquery-public-data.london_bicycles.cycle_hire as cyclehire join bigquery-public-data.london_bicycles.cycle_stations as cyclestations on cyclehire.start_station_id=cyclestations.id and cyclestations.docks_count>18;