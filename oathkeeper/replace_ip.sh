#!/bin/bash

FILE=/home/hai/project/bash-script/ip_public/ip_cur.txt

while true; do
    if [ -f "$FILE" ]; then
        echo "Get Ip public current!!!"

        cp -rf oathkeeper.yml oathkeeper.yml_bk

        ip_cur=$(cat $FILE | awk '{print $7}')

        sed -i 's|http://127.0.0.1|http://'"$ip_cur"'|g' oathkeeper.yml

        rm -f $FILE
    fi
    sleep 10 
done
