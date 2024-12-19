#!/bin/bash

Username=$username
Token=$token

Org_name=$1
Repo_name=$2

url="https://api.github.com"

curl -s -H "$Username: token $Token" "$url/repos/$Org_name/$Repo_name/contributors" | jq -r '.[].login'


