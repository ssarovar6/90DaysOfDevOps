**OSI vs TCP/IP models** 

## Hands-on Checklist (run these; add 1–2 line observations)
- **Identity:** — note your IP.
 `hostname : ip-172-31-16-217`, `hostname -I: 172.31.16.217`

- **Reachability:** — mention latency and packet loss.
 `61 packets transmitted, 61 received, 0% packet loss, time 60069ms, rtt min/avg/max/mdev = 0.992/1.015/1.178/0.028 ms `

- **Path:**  — note any long hops/timeouts.

 ![alt text](image.png)

- **Ports:** `ss -tulpn` (or `netstat -tulpn`) — list one listening service and its port.
![alt text](image-1.png)

![alt text](image-2.png)

- **Name resolution:** `dig <domain>` or `nslookup <domain>` — record the resolved IP.
![alt text](image-3.png)

![alt text](image-4.png)

- **HTTP check:** `curl -I <http/https-url>` — note the HTTP status code.
 ![alt text](image-5.png)

- **Connections snapshot:** `netstat -an | head` — count ESTABLISHED vs LISTEN (rough).

![alt text](image-6.png)