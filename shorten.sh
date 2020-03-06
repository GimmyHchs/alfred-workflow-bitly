#!/bin/bash

export PATH=$JQPATH:$PATH
access_token=$BITLY_ACCESS_TOKEN

curl --location --request POST "https://api-ssl.bitly.com/v4/shorten" \
    --header "Content-Type: application/json" \
    --header "Authorization: Bearer $access_token" \
    --data-raw "{
        \"long_url\": \"{query}\"
    }" | jq -r ".link"
