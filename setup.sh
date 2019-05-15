cp elastic*.list /etc/apt/sources.list.d/
&
cp jonathonf*.list /etc/apt/sources.list.d/
&
cp sources.list /etc/apt/
&
apt-get update & apt-get upgrade -y
&
sleep 90s
&
apt-get install landscape-client -y
&
sleep 90s
&
cp landscape_server_ca.crt /etc/landscape/
&
landscape-config --account-name standalone --url https://landscape.bonezie.com/message-system --ping-url http://landscape.bonezie.com/ping --ssl-public-key /etc/landscape/landscape_server_ca.crt 
