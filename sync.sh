#!/bin/sh
aws s3 sync ~/bartek.fyi/ s3://bartek.fyi/ --exclude "*" \
--include "*.html" --include "*.css" --include "*.pdf" --acl "public-read"
    