# Docker Basic Commands Reference

This section lists commonly used Docker commands for managing images, containers, and system information.

---

# Docker Version and System Information

Check installed Docker version

```
docker --version
```

Display detailed Docker system information

```
docker info
```

---

# Image Management

Show all available images on the system

```
docker images
```

Download images from Docker Hub

```
docker pull ubuntu
docker pull nginx
docker pull alpine
docker pull mysql
docker pull node
```

Delete a Docker image

```
docker rmi image_id
docker rmi image_name:tag
```

Search for images on Docker Hub

```
docker search ubuntu
```

Remove unused images to free space

```
docker image prune
```

---

# Container Operations

Run a simple test container

```
docker run hello-world
```

Run Ubuntu container in interactive mode

```
docker run -it ubuntu bash
```

Run container in detached (background) mode

```
docker run -d ubuntu sleep 1000
```

Run container with a custom name

```
docker run --name mycontainer ubuntu
```

---

# Viewing Containers

Show running containers

```
docker ps
```

Show all containers including stopped ones

```
docker ps -a
```

---

# Start and Stop Containers

Stop a running container

```
docker stop container_name
docker stop container_id
```

Start a stopped container

```
docker start container_name
```

Remove a container

```
docker rm container_id
```

Remove all stopped containers

```
docker container prune
```

---

# Container Inspection

View detailed information about a container

```
docker inspect container_name
```

Check container logs

```
docker logs container_name
```

Stream container logs in real time

```
docker logs -f container_name
docker logs --follow container_name
```

Display last 50 lines of logs

```
docker logs --tail 50 container_name
```

Show processes running inside container

```
docker top container_name
```

---

# Executing Commands in Containers

Open interactive shell inside container

```
docker exec -it container_id /bin/bash
```

Run command without opening shell

```
docker exec container_id ls /
docker exec container_id pwd
```

Run command as root user

```
docker exec -u root container_id ls /
```

---

# Port Mapping

Run container with host port mapped to container port

```
docker run -d -p 8080:80 nginx
```

This command maps **host port 8080** to **container port 80**.

Check container port mappings

```
docker port container_name
```

---

# Quick Command Summary

| Command | Description |
|--------|-------------|
| docker ps | Show running containers |
| docker ps -a | Show all containers |
| docker images | List all images |
| docker run | Create and start container |
| docker stop | Stop running container |
| docker start | Start stopped container |
| docker rm | Delete container |
| docker rmi | Remove image |
| docker exec | Run command inside container |
| docker logs | Display container logs |
| docker inspect | Show detailed container information |
