#!/usr/bin/env bash

sudo -i
apt-get update && apt-get install -y hostapd dnsmasq nginx
cp hostapd.conf /etc/hostapd/hostapd.conf
cp dnsmasq.conf /etc/dnsmasq.conf
