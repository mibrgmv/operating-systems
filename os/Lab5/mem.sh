#!/bin/bash

c=0
arr=()

> report.log

while true; do
  for i in {1..10}; do
    arr+=($i)
  done
  c=$((c + 1))
  if [[ $((c % 100000)) -eq 0 ]]; then
    echo "Array size: ${#arr[@]}" >> report.log
  fi
done
