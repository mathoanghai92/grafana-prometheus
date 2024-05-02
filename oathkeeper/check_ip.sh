#!/bin/bash
prev=""
while true; do  
        cur=$(curl -sS https://ipinfo.io/ip)
        if [ "$prev" != "$cur" ]; then
            prev="$cur"
            echo "$(date) $cur" >> "ip_cur.txt"
        fi
        sleep 10
done
