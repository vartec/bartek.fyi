#!/bin/sh
aws s3 sync ~/bartek.fyi/ s3://bartek.fyi/ --exclude ".git*" --acl 'public-read'