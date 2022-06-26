#!/bin/bash

for i in {1..20}; do
   echo message$i
   sleep $(( $RANDOM % 10 + 1 ))
done

