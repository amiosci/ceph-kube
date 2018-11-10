#!/bin/zsh

parent_path=${0:a:h}
cd "$parent_path"

for role in `cat deps`
do
    kubectl create -f ./templates/$role.yaml
done