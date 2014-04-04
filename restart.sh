#!/bin/bash
response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "http://api.mtgdb.info")
if [ $response -eq 502 ]
then
	/etc/init.d/monoserve stop
	/etc/init.d/monoserve start
else
	echo $response
fi