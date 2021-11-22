#!/bin/bash
curl -X DELETE -H "Content-Type: application/json" -d '{"username":"$arcade_username"}' http://worker:5000/deployment-basic-ako
