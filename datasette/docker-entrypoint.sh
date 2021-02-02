#!/bin/bash
set -e
##test
GREETINGS="Hello! How are you"
echo $GREETINGS

## step1
cd /app/
python /app/my_example.py

##step2
datasette -p 80 -h 0.0.0.0 /app/meteorites.db
