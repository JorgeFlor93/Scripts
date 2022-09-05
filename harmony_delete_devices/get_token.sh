#!/bin/bash

output=$(curl -s \
-H "Content-Type:application/json" \
-H "Accept:application/json" \
-H "Host:cloudinfra-gw.portal.checkpoint.com" \
-d '{"clientId": "a34f479afa364f6abe1fd3d2afe826f6","accessKey": "7c8af886726e433190fb40d2e8d281df"}' \
-X POST "https://cloudinfra-gw.portal.checkpoint.com/auth/external")

echo $output