#!/bin/sh

# Note: make sure that SSH_KEY_ID is SSH **ID**, not name,
# to discover key's ID see: https://developers.digitalocean.com/documentation/v2/#list-all-keys

curl -X POST https://api.digitalocean.com/v2/droplets \
    -H 'Content-Type: application/json' \
    -H "Authorization: Bearer $TOKEN" \
    -d '
{
    "name":"'$1'",
    "region":"ams3",
    "size":"512mb",
    "image":"coreos-stable",
    "ssh_keys":['$SSH_KEY_ID'],
    "backups":false,
    "private_networking":true,
    "user_data": "'"$(cat config/cloud-config.yaml | sed 's/"/\\"/g')"'"
}'
