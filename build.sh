#!/bin/bash
set -e

rm -rf node_modules
npm i

echo "start of package-lock"
echo "============"
head -n 10 package-lock.json
echo "============"


rm -rf node_modules

if [ "$NETLIFY" == "true" ] then
  # `npm ci` throws an error. See https://github.com/netlify/cli/issues/5323 
  npm i
else
  npm ci
fi
