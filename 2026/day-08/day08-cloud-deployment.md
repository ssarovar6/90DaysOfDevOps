<h2> Part 1: Launch Cloud Instance & SSH Access</h2><br>
<h3>Step 1: Create a Cloud Instance</h3><br>
<img width="1607" height="238" alt="image" src="https://github.com/user-attachments/assets/117136e3-3016-4e1b-ab6e-1de6d006fee6" />

<br>Step 2: Connect via SSH
<img width="877" height="761" alt="image" src="https://github.com/user-attachments/assets/872547b2-3d8d-4163-b3d2-6fc389133252" />
<br>
<h2>Part 2: Install Docker & Nginx </h2>
<h3></h3>Step 1: Installed Nginx</h3>
Verify Nginx is running:<br> <img width="962" height="515" alt="image" src="https://github.com/user-attachments/assets/bb36f603-bc49-4b40-adf7-57e6f5da6403" />
<br>
<h2>Part 2: Security Group Configuration </h2>
Test Web Access: http://3.250.69.231:80

<br>Below is Nginx welcome page!

<img width="807" height="419" alt="image" src="https://github.com/user-attachments/assets/b6036033-9509-4b32-a856-4d0a6840c40f" />
<h2>Part 4: Extract Nginx Logs</h2>
Step 1: View Nginx Logs<br>
<img width="958" height="528" alt="image" src="https://github.com/user-attachments/assets/f4bbd87e-4001-4f94-b55d-65240a1f454d" />
<br>
Step 2: Save Logs to File

<img width="958" height="777" alt="image" src="https://github.com/user-attachments/assets/d92b1222-e1b5-403d-ae7c-40de2dba2108" />

<br>
Step 3: Download Log File to Your Local Machine
scp -i /root/practice-key.pem ubuntu@3.250.69.231:/home/ubuntu/nginx-log.txt /root/nginx-log2.txt
<img width="743" height="105" alt="image" src="https://github.com/user-attachments/assets/0905e200-1b0e-436b-9a85-ff20ca7a0d14" />


challenge i faced :
while saving log to a file i am getting permission denied error. I did used Sudo still error. so had to use another path
command - sudo cat access.log>/var/log/nginx/nginx-log.txt
reolution: sudo cat access.log>/home/ubuntu/nginx-log2.txt


