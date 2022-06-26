#!/bin/bash

BROKER=localhost:9092
TOPIC=keytest

for i in {1..20}; do
   echo key$i:message$i | kcat -b $BROKER -P -t $TOPIC -K ":"
   sleep $(( $RANDOM % 10 + 1 ))
done

