# WifiCaptiveAdsPhreak
### Ragul Balaji & Jie Feng 2016. Released under the MIT License.

#### What is this?
Using a bunch of cool techniques and intrinsic design loopholes we can advertise using wifi

#### How 2 Setup

#####Install hostapd, dnsmasq and a web server of your choice( I will be using nginx)
apt-get install hostapd dnsmasq nginx
pacman -S hostapd dnsmasq nginx

##### Set up hostapd (in hostapd.conf)
Copy to /etc/hostapd/hostapd.conf

##### Set up dnsmasq (in dnsmasq.conf)
Copy to /etc/dnsmasq.conf

##### Set up nginx
Default config will do
Remember to download all needed js and css files
Sample ones in html folder

##### Set up ip address
Run captive.sh
./captive.sh <interface name>
