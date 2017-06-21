# HoodlineChallenge

#to find stories nearby
run the following command below to find stories near by.

the first parameter is the distance around and second parameter is the business id for which we want to find near by stories

Execute command:
sh hoodline_find_stories_near_by.sh "2.0" "(GWcUuuA5D4NXt7Vkxjll3g)"

the hoodline_find_stories_near_by.sh will run the hoodline_find_stories_nearby.hql script to run which will create the database and tables in the database and run the query to find stories near the business id where distance and business id is passed as input by the user


#to find business nearby
run the following command below to find business near by.

the first parameter is the distance around and second parameter is the story id for which we want to find near by business

Execute command:
sh hoodline_find_business_near_by.sh "2.0" "(YDW9YSAV4TiahkRVJkZ0mA)"

the hoodline_find_business_near_by.sh will run the hoodline_find_business_nearby.hql script to run which will create the database and tables in the database and run the query to find business near the story id where distance and story id is passed as input by the user

NOTE:
Before running please load business.csv and stories.csv in the /user/hoodline hdfs path. I have hardcoded these paths in the .hql scripts when doing create table statements
