# Part 1: Linux File System Hierarchy (30 minutes)
listing below purpose of these **essential** directories:

**Core Directories (Must Know):**
- `/` (root) - The starting point of everything. observed : bin/, /etc, /home, /var. I would use this when i want to understand overall structure of the linux system.
- `/home` - User home directories. observed : /home/  . I would use this when managing user files , scripts, ssh keys.
- `/root` - Root user's home directory. observed : .ssh . I would use this when working as a root and storing admin only scripts.
- `/etc` - Configuration files . observed : /etc/hostname . I would use this when configuring services networking.
- `/var/log` - Log files . observed : /var/log/syslog , /var/log/journal . I would use this when debugging application crashes, service fails or login issues.
- `/tmp` - Temporary files

**Additional Directories :**
- `/bin` - Essential command binaries
- `/usr/bin` - User command binaries
- `/opt` - Optional/third-party applications

# part 2

## Scenario 1: Service Not Starting** 
```
A web application service called 'myapp' failed to start after a server reboot.
What commands would you run to diagnose the issue?
Write at least 4 commands in order.
```
**Step 1:** Check service status
```bash
systemctl status myapp
```
**Why this command?** It shows if the service is active, inactive, or stopped

**Step 2:** If service is not found, list all services
```bash
systemctl list-units --type=myapp
```
**Why this command?** To see if myapp services exist on the system

**Step 3:** Check if service is enabled on boot
```bash
systemctl is-enabled myapp
```
**Why this command?** To know if it will start automatically after reboot

**What I learned:** Always check status first, then investigate based on what you see.



**Scenario 2: High CPU Usage** 
```
Your manager reports that the application server is slow.
You SSH into the server. What commands would you run to identify
which process is using high CPU?
```
**Step 1:** Check live cpu usage
```bash
top
```
**Why this command?** display real-time CPU consumption and running process.

**Step 2:** Identify top cpu consuming process
```bash
ps aux --sort=-%cpu | head -10
```
**Why this command?** helps quickly identify which process is using the most CPU

**Step 3:** Check for PID
```bash
ps -o pcpu
```
**Why this command?** PID is required for further investigation




