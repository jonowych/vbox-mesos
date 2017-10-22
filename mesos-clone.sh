#!/bin/bash

cd "/c/Program Files/Oracle/VirtualBox/"

./VBoxManage controlvm ubuntu-16 poweroff soft
for (( k=91; k<=93; k++))
do
	./VBoxManage clonevm ubuntu-16 --name mesos_master-$k --register
done 
