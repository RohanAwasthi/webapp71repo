#!/bin/bash
repo_name=$(git config --get remote.origin.url | sed 's/.*\///;s/.git$//')

az login

terraform init
curl -X POST -H 'Content-Type: application/json' -d "{\"trackId\": \"$repo_name\", \"status\": \"InProgress\"}"  http://20.193.131.46:4001/api/v2/updatestatus
terraform plan
terraform apply -auto-approve
curl -X POST -H 'Content-Type: application/json' -d "{\"trackId\": \"$repo_name\", \"status\": \"Success\"}"  http://20.193.131.46:4001/api/v2/updatestatus
