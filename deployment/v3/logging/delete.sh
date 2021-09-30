#!/bin/sh
# Uninstalls all logging helm charts
NS=cattle-logging-system
while true; do
    read -p "Are you sure you want to delete ALL logging helm charts?(Y/n) " yn
    if [ $yn == "Y" ]
      then
        helm -n $NS delete elasticsearch
        break
      else
        break
    fi
done
