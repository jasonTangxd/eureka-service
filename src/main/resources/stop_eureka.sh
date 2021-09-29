#!/bin/sh
meta_pid=`ps -ef | grep 'eureka-service-1.0-SNAPSHOT.jar' | grep -v grep | awk {'print $2'}`
if [ -n "$meta_pid" ]; then
    kill_result=`kill -9 $meta_pid`
    echo "Found eureka service pid = "$meta_pid" ,already be killed"
else
    echo "Not found eureka service pid."
fi