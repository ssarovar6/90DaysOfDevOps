command and its description

man - an interface to the system reference mannual
ip address - IPV4 OR IPV6 address of a device
ping <destination address> - this command is used for verifying if destination address is operational and available(Packet Internet Groper)
dig - DNS lookup utility, it is a tool for interrogating Domain name servers.
curl <url> - it is a tool for transferring, uploading/downloading data to and from a server using URLs. It fetches info about urls and print content of the url to terminal.
nslookup <IP> - program to query DNS .
wget - use for dowloading files, it is non-interactive meaning it can work in background, even if user is not logged on.
chmod - changes file mode or permission
cp - use for copying file from source to destination
mv <source> <destination>- used for moving/renaming a file from source to destination.
cat <file_name> - this command is used for deisplaying contents of file in terminal
ls -l - displays info of a file/directory in long listing format
ls -a = displays hidden files 
systemctl - used to control the state of systemd
systemd - system and service manager for Linux OS , it is a first process i.e. PID =1 when system boots
traceroute - its a tool to track path your data packets take from your computer to destination
accton <file_name> - this is used for autditing, process accounting , it records all info about a process.
bg job_id - this command resumes stopped job in background
fg job_id- moves job to foreground and allow interaction with the running process.
kill pid - this is used for terminating processes.
pkill - terminate with process name pattern or  
mpstat - displays CPU Usage statistics, part od sysstat package
pidof processname - displays process id of a running program
pmap pid- displays memory usage and analyze meomy consumption
ps - info about active process, it shows process ID, status resource usage. e.g. ps aux = displays all running process(ps displays active process and pas aux displays all running process)
top - real time monitoring, shows live process activity and shows CPU and memory usage.
htop - enhanced version of top, user friendly , colorful UI.
strace - disgnostic tool, traces system calls made by a process 
time - command measures how long a command takes to execute.
watch - monitoring live updates at fixed intervals. It displays total RAM, used memory, free memory, shared memory, buffer/cache usage, available memory, and swap space status.
uptime - this command displays how long the system has been running.
w - this displays information about logged-in users and their running processes.
