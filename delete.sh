#!/bin/bash
#arcade_username=nbayle
curl -X DELETE -H "Content-Type: application/json" -s -d '{"username": "'"$arcade_username"'"}' http://worker:5000/deployment-basic-ako | jq -r .message
