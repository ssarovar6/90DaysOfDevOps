# Day 09 Challenge

## Users & Groups Created
- Users: tokyo, berlin, professor, nairobi
- Groups: developers, admins, project-team

## Group Assignments
[List who is in which groups]

## Directories Created
[List directories with permissions]

## Commands Used
- users with home directories and passwords:
 `sudo useradd -m tokyo`, `sudo useradd -m berlin` , `sudo useradd -m professor` and 
 `sudo passwd tokyo` , `sudo passwd berlin` , `sudo passwd professor`.

- Create two groups:
`sudo groupadd admins`, `sudo groupadd developers`

- Assign users:
 `sudo usermod -aG developers tokyo` , `sudo usermod -aG developers berlin`
 `sudo usermod -aG admins berlin` , `sudo usermod -aG admins professor`

### Task 4: Shared Directory 

1. Create directory: `sudo mkdir /opt/dev-project`
2. Set group owner to `sudo chgrp developers dev-project`
3. Set permissions to `sudo chmod 775 dev-project`
4. Test by creating files as `tokyo` and `berlin` : `su tokyo > touch tokyo_file.txt` , `su berlin > touch berlin_file.txt`

### Task 5: Team Workspace (20 minutes)

1. Create user `nairobi` with home directory : `sudo useradd -m nairobi`
2. Create group `project-team` : `sudo groupadd project-team`
3. Add `nairobi` and `tokyo` to `project-team`: `sudo usermod -aG project-team tokyo`,`sudo usermod -aG project-team nairobi`
4. Create `/opt/team-workspace` directory : `sudo mkdir team-workspace`
5. Set group to `project-team`, permissions to `775` : `sudo chgrp project-team team-workspace` and `sudo chmod 775 team-workspace`
6. Test by creating file as `nairobi`

## What I Learned
- how to create user
- how to add users to group
- how to switch user from one to another.