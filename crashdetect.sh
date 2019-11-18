#!/bin/bash
while [[ ! $(pidof OtohitsApp) ]]; do
        killall OtohitsApp OtohitsViewer
        /root/OtohitsApp/OtohitsApp -autostart > /dev/null
        exit
done
