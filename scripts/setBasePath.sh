#!/bin/bash

toBeReplaced=$1
replacement=$2

for i in $(find spec -type f -print)
do
    sed -i s,${toBeReplaced},${replacement},g "${i}"
done

for i in $(find schema -type f -print)
do
    sed -i s,${toBeReplaced},${replacement},g "${i}"
done