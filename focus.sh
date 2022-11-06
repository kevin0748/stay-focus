#!/bin/bash
#
# Stay focus and block distraction

BLOCK_SITES="facebook.com instagram.com"
HOST_FILE=/etc/hosts

if [[ "$#" -gt 1 ]]; then
    echo "Usage: sudo focus.sh [--off]"
    exit 1
fi

if [[ ! -w "$HOST_FILE" ]]; then
    echo "Permission denied. Try with sudo"
    exit 1
fi

sed -i '' -e '/#FOCUS/d' $HOST_FILE

if [[ "$1" == "--off" ]]; then
    echo "focus mode off"
else
    for SITE in $BLOCK_SITES; do
        echo -e "127.0.0.1\t$SITE\t#FOCUS" >>$HOST_FILE
        echo -e "127.0.0.1\twww.$SITE\t#FOCUS" >>$HOST_FILE
    done
    echo "focus mode on"
fi
