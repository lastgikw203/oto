#!/bin/bash
while [[ ! $(pidof OtohitsApp) ]]; do
        killall OtohitsApp OtohitsViewer
        Xvfb :1 &
        export DISPLAY=:1 && /root/OtohitsApp/OtohitsApp -autostart > /dev/null
        exit
done
