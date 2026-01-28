

process commands (ps, top, pgrep, etc.

<img width="1450" height="1011" alt="image" src="https://github.com/user-attachments/assets/2dd6e6a2-82b4-4526-b75a-e1d85edf4f44" />


service checks 

systemctl status
<img width="1911" height="1003" alt="image" src="https://github.com/user-attachments/assets/99b58526-af3c-4403-80fe-f9ca64e8e067" />

systemctl list-units - List units that systemd currently has in memory. This includes units that are either referenced directly or through a dependency, units that
           are pinned by applications programmatically, or units that were active in the past and have failed. By default only units which are active,
           have pending jobs, or have failed are shown

           e.g of service - ssh.service and chrony.service (to check use systemctl list-unit --type=service)
<img width="1898" height="706" alt="image" src="https://github.com/user-attachments/assets/d3fefa13-47ac-4896-9212-08f358b6cbd0" />
<img width="1889" height="1001" alt="image" src="https://github.com/user-attachments/assets/6f9860fb-3e09-4e76-9141-c6db3779ffa8" />


log commands (journalctl -u <service>, tail -n 50, etc

journalctl -u ssh.service
<img width="1684" height="853" alt="image" src="https://github.com/user-attachments/assets/b53e6192-3692-40d2-90d5-88ab7c2e65dc" />
tail -n 10 filename
<img width="1064" height="319" alt="image" src="https://github.com/user-attachments/assets/711d5aaa-3a0f-49e6-b495-dd505906793f" />
