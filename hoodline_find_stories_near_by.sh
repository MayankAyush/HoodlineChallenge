myvalue=`hive -S -hiveconf H_Distance=$1 -hiveconf H_Business_Id=$2 -f hoodline_find_stories_nearby.hql`
echo $myvalue

#sh hoodline_find_stories_near_by.sh distance_in_km="2.0" business_id="(GWcUuuA5D4NXt7Vkxjll3g)"
#sh hoodline_find_stories_near_by.sh "2.0" "(GWcUuuA5D4NXt7Vkxjll3g)"
