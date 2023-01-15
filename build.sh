#!/bin/bash
set -e

rm -rf node_modules
npm i

echo "start of package-lock"
echo "============"
head -n 10 package-lock.json
echo "============"


rm -rf node_modules

npm i
