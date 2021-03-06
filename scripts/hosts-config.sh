#!/bin/bash

# Configure hosts file
# Leandro Sehnem Heck (leoheck@gmail.com)

# This script configures the /etc/hosts
# Features:
# - Set initial hosts file

# /soft64/admin/scripts/update-hosts.sh
# /soft64/admin/etc/hosts_template

HOSTNAME=$(hostname)
IP=$(ifconfig | grep 10.32. | tr -s '[:space:]' | cut -d' ' -f3 | cut -d: -f2)


if [ -f /soft64/admin/etc/hosts_current ]; then

	# incialmente clona o arquivo pronto do soft64
	# depois o cron job vai atualizar periodicamene
	cp -f /soft64/admin/etc/hosts_current /etc/hosts
	echo "$IP   $HOSTNAME" >> /etc/hosts

fi