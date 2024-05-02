/etc/wpa_supplicant/wpa_supplicant.conf
ctrl_interface=/run/wpa_supplicant
update_config=1

rfkill unblock wifi

wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf

su

wpa_cli
scan
scan_results
add_network
set_network 0 ssid "<the name of your wifi network>"
set_network 0 psk "<the password of your wifi network>"
enable_network 0
save_config
quit

set_network 7 ssid "iPhone (2)"
set_network 7 psk "arewehear"
enable_network 7
save_config
