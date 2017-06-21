CREATE DATABASE IF NOT EXISTS hoodline_interesting_stories;
USE hoodline_interesting_stories;
CREATE TABLE AllBusiness (BID string,lat float,lon float) row format delimited fields terminated by ',' stored as textfile;
LOAD DATA INPATH '/user/hoodline/business.csv' OVERWRITE INTO TABLE AllBusiness;
CREATE TABLE AllStories (SID string,lat float,lon float) row format delimited fields terminated by ',' stored as textfile;
LOAD DATA INPATH '/user/hoodline/stories.csv' OVERWRITE INTO TABLE AllStories;
SELECT a.BID AS BusinessID, b.SID AS StoryID, 
   111.111 *
    DEGREES(ACOS(COS(RADIANS(a.Latitude))
         * COS(RADIANS(b.Latitude))
         * COS(RADIANS(a.Longitude - b.Longitude))
         + SIN(RADIANS(a.Latitude))
         * SIN(RADIANS(b.Latitude)))) AS distance_in_km
  FROM hoodline_interesting_stories.AllBusiness AS a
  JOIN hoodline_interesting_stories.AllStories AS b ON a.BID <> b.SID
  where BID in H_Business_Id
 HAVING distance_in_km < H_Distance
 ORDER BY distance_in_km DESC