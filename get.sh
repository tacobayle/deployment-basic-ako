#!/bin/bash
#arcade_username=nbayle
http_response=$(curl -X GET -H "Content-Type: application/json" -s -d '{"username": "'"$arcade_username"'"}' http://172.17.0.1:5000/deployment-basic-ako)
status=$?
if [ "$status" -eq 0 ]; then
  cat ascii-art.ako-basic
  result=$(echo $http_response | jq .message | tr -d '"')
  echo -e $result
else
  echo "something went wrong with worker API server"
fi