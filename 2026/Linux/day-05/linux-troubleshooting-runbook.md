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
- pcpu :
- pmem : 
- free -h : display amount of free and used memory in system.

- df -h :
- du -sh /var/log :
- iostat :
- ss -tulpn :
- netstat -tulpn: 
- curl -I <service-endpoint> :
- ping: 
- journalctl -u <service> -n 50
- tail -n 50 /var/log/<file>.log