
# Day 13 – Linux Volume Management (LVM)

### Task 1: Check Current Storage
Run: `lsblk`, `pvs`, `vgs`, `lvs`, `df -h`

![alt text](image.png)

**attached 10G and 11G volume from EBS**

![alt text](image-2.png)


### Task 2: Create Physical Volume
```bash
pvcreate /dev/sdb   # or your loop device
pvs
```
![alt text](image-3.png)


### Task 3: Create Volume Group
```bash
vgcreate devops-vg /dev/sdb
vgs
```
![alt text](image-4.png)


### Task 4: Create Logical Volume
```bash
lvcreate -L 500M -n app-data devops-vg
lvs
```
![alt text](image-5.png)


### Task 5: Format and Mount
```bash
mkfs.ext4 /dev/devops-vg/app-data
mkdir -p /mnt/app-data
mount /dev/devops-vg/app-data /mnt/app-data
df -h /mnt/app-data
```
![alt text](image-6.png)

