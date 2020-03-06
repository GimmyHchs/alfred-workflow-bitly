# workflow-bitly
Alfred 4.0 workflow which shorten the url via bitly


## Dependencies
- jq - jq is a lightweight and flexible command-line JSON processor 


## Installation

1. [Install jq](https://stedolan.github.io/jq/download/)
2. Download and import the `shorten.alfredworkflow`
3. Set the environment of `JQPATH` and `BITLY_ACCESS_TOKEN`

You can get the JQPATH via `which` command
```sh
$ which jq
```

You have to generate a personal access token from bitly.  
[How-do-I-find-my-OAuth-access-token ?](https://support.bitly.com/hc/en-us/articles/230647907-How-do-I-find-my-OAuth-access-token-)
