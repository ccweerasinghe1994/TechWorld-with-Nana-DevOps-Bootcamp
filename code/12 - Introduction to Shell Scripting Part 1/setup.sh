#!/bin/bash

echo "setup and configure server"


file_name=server_setup.sh

if [ -d "config" ]
then
    echo "reading config files"
    config_files=$(ls config)
else
    echo "config directory does not exist therefore creating it"
    mkdir config
fi

numb_files=$(ls config | wc -l)

if [ $numb_files -gt 0 ]
then
    echo "config files exist"
else
    echo "config files do not exist"
fi

user_group=$1

if [ -z $user_group ]
then
    echo "user group not provided"
else
    echo "user group is $user_group"
fi


echo "creating file $file_name"
echo "config files are $config_files"

config_dir=$2

if [ -d $config_dir ]
then
    echo "reading config files from $config_dir"
    echo "ls $config_dir"
else
    echo "config directory does not exist"
    mkdir $config_dir 
    touch "$config_dir/$file_name"
fi

