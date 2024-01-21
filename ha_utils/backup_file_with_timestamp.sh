#!/usr/bin/env bash
cp -pvf $1 $1.`date +%Y.%m.%d.%H.%M.%S.%3N`.bak
# realpath $0
