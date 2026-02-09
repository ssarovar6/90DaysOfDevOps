# Day 05 – Linux Troubleshooting Drill: CPU, Memory, and Logs


## Target service / process
- uname -a, uname -r :  print system information, e.g. kernel name, network node hostname, kernel version.
 output = 6.6.87.2-microsoft-standard-WSL2

- lsb_release -a : the lsb_release command provides Linux Standard Base amd distribution specific information. -a flag stands for all information which includes version, distributor's ID, currently installed distribution, release number of currently installed distribution and code name of currently installed distribution.
output = 
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.3 LTS
Release:        22.04
Codename:       jammy

- cat /etc/os-release or cat /usr/lib/os-release : operating system information data
output = 
PRETTY_NAME="Ubuntu 22.04.3 LTS"
NAME="Ubuntu"
VERSION_ID="22.04"
VERSION="22.04.3 LTS (Jammy Jellyfish)"
VERSION_CODENAME=jammy
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=jammy

- top : real time monitoring, shows live process activity and shows CPU and memory usage.

- ps -o pid : displays proces PID value 

- pcpu : displays active process cpu%

- pmem : displays active process memory%

- free -h : display amount of free and used physical and swap memory in system.

- df -h : display the space available on all currently mounted file systems in human readable form.

- du : estimate file space usage  e.g. du -sh /var/log

- iostat : used for monitoring system input/output device.

- ss -tulpn : utility to investigate sockets

- netstat -tulpn: print network connections, routing tables.

- curl -I <service-endpoint> : tool  for  transferring  data from or to a server using URLs

- ping: used for checking if a server is available and reachable or not

- journalctl : Print log entries from the systemd journal e.g journalctl -u <service> -n 50
output =
 
Feb 08 04:00:11 ip-172-31-16-217 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Feb 08 04:00:11 ip-172-31-16-217 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
Feb 08 06:47:31 ip-172-31-16-217 systemd[1]: Stopping nginx.service - A high performance web server and a reverse proxy server...
Feb 08 06:47:32 ip-172-31-16-217 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
Feb 08 06:47:54 ip-172-31-16-217 systemd[1]: Stopping nginx.service - A high performance web server and a reverse proxy server...
Feb 08 06:47:54 ip-172-31-16-217 systemd[1]: nginx.service: Deactivated successfully.
Feb 08 06:47:54 ip-172-31-16-217 systemd[1]: Stopped nginx.service - A high performance web server and a reverse proxy server.
Feb 08 07:02:25 ip-172-31-16-217 systemd[1]: Stopping nginx.service - A high performance web server and a reverse proxy server...



- tail : 
e.g. tail -n 10 /var/log/nginx/access.log
output = 
20.64.105.245 - - [09/Feb/2026:14:03:37 +0000] "GET / HTTP/1.1" 200 409 "-" "Mozilla/5.0 zgrab/0.x"