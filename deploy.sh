#!/bin/sh
#PROJECT_PATH=/home/
JAR_NAME=dev-ops-demo
killOld()
{
   pid=`ps -ef|grep java|grep $JAR_NAME|awk '{print $2}'`
   echo "old project id is :$pid"
   if [ "$pid"x = ""x ]
   then
      echo "no project pid alive"
   else
      kill -9 $pid
      echo "$pid is Killed"
   fi
}
cd $PROJECT_PATH/lxy
mvn -X clean install
killOld
cd $PROJECT_PATH/lxy/target
java -jar dev-ops-demo-0.0.1-SNAPSHOT.jar
echo "Success deploy"
