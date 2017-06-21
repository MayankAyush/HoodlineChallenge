myvalue=`hive -S -hiveconf H_Distance=$1 -hiveconf H_Story_Id=$2 -f hoodline_find_business_nearby.hql`
echo $myvalue

#sh hoodline_find_stories_near_by.sh distance_in_km="2.0" H_Story_Id="(YDW9YSAV4TiahkRVJkZ0mA)"
#sh hoodline_find_stories_near_by.sh "2.0" "(YDW9YSAV4TiahkRVJkZ0mA)"