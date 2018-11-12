#!/bin/base

mkdir -p /lempx/tmp
ce /lempx/tmp

# Step 1 – Install wget to import repositories. Enter the command below.
yum -y install wget

# Step 2 – To begin installing Deluge, first enable EPEL and Nux repository on your system. Enter the commands given below in SSH (root)
wget http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
rpm -ivh nux-dextop-release-0-5.el7.nux.noarch.rpm
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm
rpm -ivh epel-release-7-6.noarch.rpm

# Step 3 – Finally install Deluge by entering the below command
yum -y install deluge-web

# Step 4 – If you are using firewall then you need to allow port 8112 to be accessible.
# Step 5 – Start Deluge.
systemctl start deluge-web

# Step 6 – Find your ip address. You can find your ip address on http://www.seemyip.com:8112 .
# Step 7 - Stop Deluge
# systemctl stop deluge-web
