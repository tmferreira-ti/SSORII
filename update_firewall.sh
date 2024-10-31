#!/bin/bash
wget https://raw.githubusercontent.com/tmferreira-ti/ASOR/main/Confs/srv1/sysctl.conf -O /etc/sysctl.conf --no-check-certificate --no-cache

wget https://raw.githubusercontent.com/tmferreira-ti/SSORII/refs/heads/main/Confs/firewall -O /etc/init.d/firewall --no-check-certificate --no-cache

wget https://raw.githubusercontent.com/tmferreira-ti/SSORII/refs/heads/main/Confs/firewall.service -O /etc/systemd/system/firewall.service

chmod +x /etc/init.d/firewall

systemctl enable firewall.service

echo "Finalizado..."
Sleep 1
reboot
