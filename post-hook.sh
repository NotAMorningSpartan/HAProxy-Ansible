#! /bin/bash
LE_CONFIG="/etc/letsencrypt"

        for path in $LE_CONFIG/live/*; do

        shortdomain=${path#"$LE_CONFIG/live/"}
        shortdomain=${shortdomain%/}
        if [ "$shortdomain" != "README" ];
        then
#                echo "$shortdomain"
                cat "$path/fullchain.pem" "$path/privkey.pem" > "/etc/ssl/haproxy/$shortdomain-combined.pem"
        fi
done
systemctl restart haproxy
