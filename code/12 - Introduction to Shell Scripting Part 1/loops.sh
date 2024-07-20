#!/bin/bash

echo "this is a sample loop example"

for param in $* 
    do
        if [ -d $param ]
        then
            echo "$param is a directory"
            echo "listing the contents of the directory"
            ls $param
        elif [ -f $param ]
        then
            echo "$param is a file"
        fi
        echo $param
    done