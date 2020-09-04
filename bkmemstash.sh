#!/bin/bash
ipaddress=$( tail -n 1 inventory )
echo $ipaddress
curl -H "Content-Type: text/plain" -H "token: bb9fa411-596b-45ef-ab32-8111e6af5491" --request PUT --data $ipaddress https://api.memstash.io/values/backend

curl -H "Content-Type:text/plain" -H "token:bade66f6-b826-4e77-9310-dfeddbd3aaed" --request PUT --data "arn:aws:s3:::superpower-${ID}" https://api.memstash.io/values/frontend
