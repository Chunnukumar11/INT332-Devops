# Docker Networking Practice

## Introduction
Docker networking allows containers to communicate with each other and with the host system. Docker provides different network drivers such as **bridge, host, and overlay**. Networking helps manage communication between containers in a secure and isolated environment.

Common Docker network drivers:
- **Bridge** – Default network used for containers on the same host.
- **Host** – Container shares the host network directly.
- **Overlay** – Used for communication between containers on different hosts (Docker Swarm).

---

## 1. Check Existing Docker Networks

Command:

```bash
docker network ls
```

Description:  
This command lists all available Docker networks on the system.

Example Output:

```bash
NETWORK ID     NAME      DRIVER    SCOPE
abc123         bridge    bridge    local
def456         host      host      local
ghi789         none      null      local
```

Explanation:

- **bridge** – Default network where containers communicate internally.
- **host** – Container uses host machine network.
- **none** – Container has no network access.

---

## 2. Create a Custom Docker Network

Command:

```bash
docker network create mynetwork
```

Description:  
Creates a new custom bridge network named **mynetwork**.

Verify the network:

```bash
docker network ls
```

Example Output:

```bash
NETWORK ID     NAME        DRIVER    SCOPE
xyz789         mynetwork   bridge    local
```

Custom networks are useful for isolating containers and enabling communication between selected containers.

---

## 3. Run Containers in the Network

Command:

```bash
docker run -dit --name container1 --network mynetwork ubuntu
docker run -dit --name container2 --network mynetwork ubuntu
```

Explanation:

- `-d` → Runs container in background (detached mode)  
- `-i` → Interactive mode  
- `-t` → Allocates terminal  
- `--name` → Assigns container name  
- `--network` → Connects container to a specific Docker network  

Both containers are now connected to **mynetwork**.

---

## 4. Check Running Containers

Command:

```bash
docker ps
```

Example Output:

```bash
CONTAINER ID   IMAGE    STATUS    NAMES
ab1234         ubuntu   Up        container1
cd5678         ubuntu   Up        container2
```

Explanation:  
Shows currently running containers along with container ID, image name, status, and container names.

---

## 5. Access Container Terminal

Command:

```bash
docker exec -it container1 bash
```

Explanation:  
This command opens the terminal inside **container1**, allowing you to execute commands inside the container.

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

Explanation:  
Docker provides automatic DNS resolution inside custom networks.  
This means containers can communicate using **container names instead of IP addresses**.

Stop ping using:

```bash
Ctrl + C
```

---

## 7. Inspect Docker Network

Command:

```bash
docker network inspect mynetwork
```

Explanation:  
This command displays detailed information about the network including:

- Network ID
- Network driver
- Connected containers
- Subnet and gateway
- Network configuration

Example Output includes container details like:

```bash
"Containers": {
    "container1": {},
    "container2": {}
}
```

---

## 8. Connect an Existing Container to a Network

Command:

```bash
docker network connect mynetwork container1
```

Explanation:  
Allows connecting a running container to another network.

---

## 9. Disconnect Container from Network

Command:

```bash
docker network disconnect mynetwork container1
```

Explanation:  
Removes the container from the specified network.

---

## 10. Remove Docker Network

Before removing the network, stop and remove containers:

```bash
docker stop container1 container2
docker rm container1 container2
```

Remove network:

```bash
docker network rm mynetwork
```

Explanation:  
A network cannot be removed if it is still being used by containers.

---

## Result
Successfully created a custom Docker network and verified communication between containers using the **ping command**.

---

## Conclusion

Docker networking enables containers to communicate in isolated environments. Custom networks provide better security, container name resolution, and improved organization for containerized applications.
