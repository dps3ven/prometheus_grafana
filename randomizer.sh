#!/bin/sh
NUM=0
while [ "$NUM" -lt 10 ]
do
  RANDOM=$(shuf -i 0-2 -n1)
  if [ "$RANDOM" = 0 ]; then
    curl http://172.20.0.7:5000
  fi
  if [ "$RANDOM" = 1 ]; then
   curl -X post http://172.20.0.7:5000 
  fi
  if [ "$RANDOM" = 2 ]; then
   curl -X put http://172.20.0.7:5000
  fi
   NUM=$(( $NUM + 1 ))
done
