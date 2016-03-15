echo $1
sudo nmcli n off # turn off networkmanager so that it doesnt conflict
systemctl start nginx dnsmasq hostapd # start services
iptables -t nat -A PREROUTING -i $1 -p tcp --dport 80 -j DNAT  --to-destination  10.1.0.1:80 #redirect all ips to our ip
iptables -t nat -A PREROUTING -i $1 -p tcp --dport 443 -j DNAT  --to-destination  10.1.0.1:443
iptables -t nat -A POSTROUTING -j MASQUERADE 
ip addr add 10.1.0.1/16 broadcast 10.1.255.255 dev $1 #set ip address, netmask and broadcast ip

