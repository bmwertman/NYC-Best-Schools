#Best Schools NYC 
####Heroku: <http://nyc-best-schools.herokuapp.com/>

#####This app is a tool for parents to find an apartment in the best school zone for their children.

######Non-Technical Description
This application takes data from NYC Open Data including grades assigned to schools by the department of education(DOE) in three areas school progress(60% weighting), school performance(25%) and school environment (15%). These weighted grades are then brought together for and overall school grade. Best Schools NYC's goal was to assign these grades to a color coded legend which would display a shaded color area corresponding to the school zone's border of the address searched for on Google Maps.

######Technical
Uses PostGIS Postgresql/Heroku extension and uploader tool to bring shape file data in to represent the school zones as a layer on Google Maps

Uses Geocoder gem to return latitude and longitudinal coordinates from a searched address.

SQL search to match shaded area to a school dbn number:

best_nyc_schools_development=# SELECT dbn FROM es_zones WHERE ST_Contains(geom, ST_GeomFromText($$POINT(40.774576 -73.952545)$$, 4326));
 dbn 
________
(0 rows)

