cp elastic*.list /etc/apt/sources.list.d/
sleep 2
cp sources.list /etc/apt/
sleep 2
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sleep 2
sudo add-apt-repository ppa:jonathonf/ffmpeg-4
sleep 2
apt-get update & apt-get upgrade -y
sleep 90s
apt-get install landscape-client -y & sleep 90s & cp landscape_server_ca.crt /etc/landscape/ & cp client.conf /etc/landscape/
#
sleep 10s
#
service rsyslog restart
#
sleep 5s
#
landscape-config --account-name standalone --url https://landscape.bonezie.com/message-system --ping-url http://landscape.bonezie.com/ping --ssl-public-key /etc/landscape/landscape_server_ca.crt
#
