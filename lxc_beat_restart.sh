#lxc exec elasticsearch shutdown now
#sleep 10
#lxc exec elasticsearch2 shutdown now
#sleep 10
#lxc exec elasticsearch3 shutdown now
#sleep 10
#lxc exec elasticsearch4 shutdown now
#sleep 10
#lxc exec elasticsearch5 shutdown now
#sleep 20
#
#lxc exec kibana shutdown now
#sleep 10
#
#lxc exec logstash shutdown now
#sleep 60
#
#lxc start kibana
#sleep 20
#lxc start elasticsearch
#sleep 20
#lxc start elasticsearch2 elasticsearch3 elasticsearch4 elasticsearch5
#sleep 20
#
lxc exec elasticsearch service packetbeat restart
lxc exec elasticsearch2 service packetbeat restart
lxc exec elasticsearch3 service packetbeat restart
lxc exec elasticsearch4 service packetbeat restart
lxc exec elasticsearch5 service packetbeat restart
sleep 20
#
lxc exec elasticsearch service filebeat restart
lxc exec elasticsearch2 service filebeat restart
lxc exec elasticsearch3 service filebeat restart
lxc exec elasticsearch4 service filebeat restart
lxc exec elasticsearch5 service filebeat restart
sleep 20
#
lxc exec elasticsearch service metricbeat restart
lxc exec elasticsearch2 service metricbeat restart
lxc exec elasticsearch3 service metricbeat restart
lxc exec elasticsearch4 service metricbeat restart
lxc exec elasticsearch5 service metricbeat restart
sleep 20
#
lxc exec kibana service packetbeat restart
lxc exec kibana service filebeat restart
lxc exec kibana service metricbeat restart
sleep 20
#
lxc exec cache service packetbeat restart
lxc exec cache service filebeat restart
lxc exec cache service metricbeat restart
sleep 20
#
lxc exec nextcloud service packetbeat restart
lxc exec nextcloud service filebeat restart
lxc exec nextcloud service metricbeat restart
sleep 20
#
lxc exec mariadb service packetbeat restart
lxc exec mariadb service filebeat restart
lxc exec mariadb service metricbeat restart
sleep 20
#
lxc exec logstash service packetbeat restart
lxc exec logstash service filebeat restart
lxc exec logstash service metricbeat restart
sleep 20
#
