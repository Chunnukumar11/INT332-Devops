# Docker Networking Practice

## Introduction
Docker networking allows containers to communicate with each other and with the host system. Docker provides different network drivers such as bridge, host, and overlay.

---

## 1. Check Existing Docker Networks

Command:

```bash
docker network ls
```

Description:  
Displays all available Docker networks like bridge, host, and none.

Example Output:
```bash
NETWORK ID     NAME      DRIVER    SCOPE
abc123         bridge    bridge    local
def456         host      host      local
ghi789         none      null      local
```

---

## 2. Create a Custom Docker Network

Command:

```bash
docker network create mynetwork
```

Check network again:

```bash
docker network ls
```

This creates a custom network called **mynetwork**.

---

## 3. Run Containers in the Network

Command:

```bash
docker run -dit --name container1 --network mynetwork ubuntu
docker run -dit --name container2 --network mynetwork ubuntu
```

Explanation:
- `-dit` runs container in detached interactive mode  
- `--name` assigns container name  
- `--network` connects container to the specified network  

---

## 4. Check Running Containers

```bash
docker ps
```

Example Output:

```bash
CONTAINER ID   IMAGE    NAMES
ab1234         ubuntu   container1
cd5678         ubuntu   container2
```

---

## 5. Access Container Terminal

```bash
docker exec -it container1 bash
```

This opens the terminal of **container1**.

---

## 6. Test Communication Between Containers

Inside container1 run:

```bash
ping container2
```

Example Output:

```bash
PING container2 (172.18.0.3) 56(84) bytes of data.
64 bytes from container2: icmp_seq=1 ttl=64 time=0.2 ms
64 bytes from container2: icmp_seq=2 ttl=64 time=0.1 ms
```

This shows that containers are successfully communicating.

---

## 7. Inspect Docker Network

Command:

```bash
docker network inspect mynetwork
```

This command shows:
- Network ID
- Connected containers
- Subnet and gateway
- Network configuration

---

## 8. Disconnect Container from Network

```bash
docker network disconnect mynetwork container1
```

---

## 9. Remove Docker Network

```bash
docker network rm mynetwork
```

Note: Network must not have running containers before deletion.

---

## Conclusion

Docker networking enables containers to communicate using isolated virtual networks. Custom networks help manage container communication and improve application scalability.
