#! /usr/bin/bash
echo '['
# pulsemixer --list | grep Default | awk '{ print t"{\"muted\":"$10"\"volume\":"substr($14, 3, length($14)-5)"}" } {t=","}'
pulsemixer --list | grep Default | cut -d',' -f3,5 | awk '{ print t"{\"muted\":"$2"\"volume\":"substr($4, 3, length($4)-4)"}" } {t=","}'
echo ']'