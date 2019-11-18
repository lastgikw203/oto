#!/bin/bash
while [[ ! $(pidof OtohitsApp) ]]; do
        killall OtohitsApp OtohitsViewer
        /root/OtohitsApp/OtohitsApp -nolog -autostart > /dev/null
        exit
done
