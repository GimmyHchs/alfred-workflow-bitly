#!/bin/bash

access_token=$BITLY_ACCESS_TOKEN

if [ -f "/usr/local/bin/jq" ]; then
    JQ_COMMAND="/usr/local/bin/jq"
elif [ -f "/usr/bin/jq" ]; then
    JQ_COMMAND="/usr/bin/jq"
elif [ -f "$HOME/bin/jq" ]; then
    JQ_COMMAND="$HOME/bin/jq"
fi

if [ -z "$JQ_COMMAND" ]; then
    # echo "Couldn't find jq, adding $JQPATH to PATH."
    export PATH=$JQPATH:$PATH
    JQ_COMMAND="jq"
else
	# echo "Found jq at $JQ_COMMAND"
fi

curl --location --request POST "https://api-ssl.bitly.com/v4/shorten" \
    --header "Content-Type: application/json" \
    --header "Authorization: Bearer $access_token" \
    --data-raw "{
        \"long_url\": \"{query}\"
    }" | $JQ_COMMAND -r ".link"