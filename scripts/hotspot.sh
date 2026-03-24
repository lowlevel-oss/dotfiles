#!/bin/bash
nmcli device set wlan0 managed no
sudo hostapd /etc/hostapd/hostapd.conf &
sleep 2
sudo ip addr add 10.42.0.1/24 dev wlan0 2>/dev/null
sudo sysctl net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o enp5s0 -j MASQUERADE
sudo iptables -F FORWARD
sudo iptables -P FORWARD ACCEPT
sudo iptables -A FORWARD -i wlan0 -o enp5s0 -s 10.42.0.0/24 -j ACCEPT
sudo iptables -A FORWARD -i enp5s0 -o wlan0 -d 10.42.0.0/24 -j ACCEPT
sudo dnsmasq --interface=wlan0 --dhcp-range=10.42.0.10,10.42.0.254,1h --port=0 --bind-interfaces --dhcp-option=6,8.8.8.8,8.8.4.4 &
echo "Hotspot started!"
