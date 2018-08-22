#!/bin/bash

nmcli d disconnect enp0s8 # Laptop ethernet port
nmcli d disconnect enp0s9 # WLAN
nmcli d connect enp0s3 # Dock ethernet
nmcli c down zfas
nmcli c up normal ifname enp0s3

