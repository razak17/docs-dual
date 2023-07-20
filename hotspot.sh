#!/bin/sh

IFNAME="wlan0"
CON_NAME="myhotspot"
nmcli connection add type wifi ifname $IFNAME con-name $CON_NAME autoconnect yes ssid $CON_NAME

# UUID=$(grep uuid /etc/NetworkManager/system-connections/Hotspot | cut -d= -f2)
# nmcli con up uuid "$UUID"
