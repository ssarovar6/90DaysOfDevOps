# Linux commands and its description

## Process management
- man : an interface to the system reference mannual
- systemctl - used to control the state of systemd
- systemd - system and service manager for Linux OS , it is a first process i.e. PID =1 when system boots
- accton <file_name> - this is used for autditing, process accounting , it records all info about a process.
- bg job_id - this command resumes stopped job in background
- fg job_id- moves job to foreground and allow interaction with the running process.
- kill pid - this is used for terminating processes.
- pkill - terminate with process name pattern or 
- pidof processname - displays process id of a running program
- pmap pid- displays memory usage and analyze meomy consumption
- ps - info about active process, it shows process ID, status resource usage. e.g. ps aux = displays all running process(ps displays active process and pas aux displays all running process)
- top - real time monitoring, shows live process activity and shows CPU and memory usage.
- htop - enhanced version of top, user friendly , colorful UI.
- strace - disgnostic tool, traces system calls made by a process 
- time - command measures how long a command takes to execute.
- watch - monitoring live updates at fixed intervals. It displays total RAM, used memory, free memory, shared memory, buffer/cache usage, available memory, and swap space status.


## File system
- wget - use for dowloading files, it is non-interactive meaning it can work in background, even if user is not logged on.
- w - this displays information about logged-in users and their running processes.
- chmod - changes file mode or permission
- chown - cha nges owner and group of user
- chgrp - changes only group
- useradd - create user and add it to /etc/group
- groupadd - create and add group to /etc/group
- userdel - removes/delete user
- grpdel - removes/delete group
- usermod - modify the system account files to reflect the changes that are specified in command.


## Networking troubleshooting
- ip address - IPV4 OR IPV6 address of a device
- ping <destination address> - this command is used for verifying if destination address is operational and available(Packet Internet Groper)
- dig - DNS lookup utility, it is a tool for interrogating Domain name servers.
- curl <url> - it is a tool for transferring, uploading/downloading data to and from a server using URLs. It fetches info about urls and print content of the url to terminal.
- nslookup <IP> - program to query DNS .
- traceroute - its a tool to track path your data packets take from your computer to destination
- mpstat - displays CPU Usage statistics, part od sysstat package
- uptime - this command displays how long the system has been running.
