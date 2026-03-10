# Docker Images

Docker image ek lightweight package hota hai jisme application ko run karne ke liye sabhi required files aur dependencies hoti hain.  
Isme application code, libraries, runtime environment aur configuration files include hote hain.

Docker image se hi container create kiya jata hai.

---

## What is a Docker Image?

Docker image ek **read-only template** hota hai jise use karke containers run kiye jate hain.

Docker image me include hota hai:

- Application code
- System libraries
- Dependencies
- Environment configuration
- Startup commands

Ek hi image se multiple containers create kiye ja sakte hain.

---

## Pull Image from Docker Hub

Docker Hub ek online registry hai jahan se images download ki ja sakti hain.

Example commands:

```
docker pull ubuntu
docker pull nginx
docker pull mysql
docker pull node
```

Ye commands Docker Hub se images download karte hain.

---

## List Available Images

System me available images dekhne ke liye:

```
docker images
```

Is command se image name, tag, image ID aur size show hota hai.

---

## Remove Docker Image

Agar koi image delete karni ho to:

```
docker rmi image_id
```

Example:

```
docker rmi nginx
```

---

## Build Docker Image

Dockerfile ka use karke custom image banayi ja sakti hai.

Example command:

```
docker build -t myimage:v1 .
```

Yaha:

- `-t` image ko tag dene ke liye use hota hai  
- `myimage:v1` image ka naam aur version hai

---

## Example Dockerfile

```
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/

EXPOSE 80
```

Image build karne ke baad container run kar sakte hain.

```
docker run -d -p 8080:80 myimage:v1
```

---

## Image Tagging

Docker images ko alag versions dene ke liye tags use kiye jate hain.

Example:

```
docker tag myimage:v1 myimage:latest
```

Isse ek hi image ke multiple versions manage kiye ja sakte hain.

---

## Conclusion

Docker images containerization ka main component hain.  
Images ki help se applications ko easily package aur deploy kiya ja sakta hai.

---

Author  
Chunnu Kumar  
Docker DevOps Lab
