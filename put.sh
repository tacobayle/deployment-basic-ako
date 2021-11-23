#!/bin/bash
#arcade_username=nbayle
http_response=$(curl -X PUT -H "Content-Type: application/json" -s -d '{"username": "'"$arcade_username"'"}' http://worker:5000/deployment-basic-ako)
status=$?
if [ "$status" -eq 0 ]; then
  echo $(echo $http_response | jq .message)
else
  echo "something went wrong with worker API server"
fi