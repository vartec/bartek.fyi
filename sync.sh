#!/bin/sh
aws s3 sync ~/bartek.fyi/ s3://bartek.fyi/ --exclude "*" \
--include "*.html" --include "*.css" --include "*.pdf" --acl "public-read"
aws s3 sync ~/bartek.fyi/nalewka/ s3://bartek.fyi/nalewka/ --exclude "*" \
--include "*.html" --include "*.css" --include "*.jpg" --include "*.gif" --acl "public-read"
aws cloudfront create-invalidation --distribution-id EAPPH9FF15TM1 --paths '/*'
    