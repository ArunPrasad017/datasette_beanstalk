#!/bin/bash
set -e
##test
GREETINGS="Hello! How are you"
echo $GREETINGS

## step1
python /app/my_example.py

##step2
datasette -p 8001 -h 0.0.0.0 meteorites.db