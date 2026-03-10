# Docker DevOps Practice Lab 🐳

This repository contains Docker practice notes, command references, and small containerized projects created during DevOps laboratory sessions.  
The goal of this repository is to help understand Docker fundamentals, practice container commands, and build basic containerized applications.

This project can also be useful for students preparing for DevOps interviews and learning container technology step-by-step.

---

## 📚 Topics Covered

The repository includes important Docker concepts and hands-on practice such as:

- Introduction to Docker and Containerization
- Docker Images and Containers
- Common Docker Commands
- Environment Variables in Containers
- Host and Container Interaction
- Docker Volumes for Data Persistence
- Docker Networking Basics
- Creating Custom Docker Images using Dockerfile
- Small Docker Projects (Nginx and Node.js)
- Docker Lifecycle and Container Management

---

## 🐳 Common Docker Commands

### Pull Docker Images

Use the following commands to download images from Docker Hub.

```
docker pull ubuntu
docker pull nginx
docker pull alpine
docker pull mysql
docker pull mongo
docker pull node
```

---

### Running Containers

Run a basic container

```
docker run hello-world
```

Run container with interactive terminal

```
docker run -it ubuntu bash
```

Run container in background with port mapping

```
docker run -d -p 8080:80 nginx
```

Run container with environment variable

```
docker run -it -e COLLEGE=DEVOPS ubuntu bash
```

Run container with a custom name

```
docker run -d --name mycontainer ubuntu
```

---

## ⚙️ Container Management Commands

Check running containers

```
docker ps
```

Check all containers

```
docker ps -a
```

Stop a running container

```
docker stop container_name
```

Start a stopped container

```
docker start container_name
```

Remove a container

```
docker rm container_id
```

View container logs

```
docker logs container_name
docker logs -f container_name
```

Run commands inside container

```
docker exec -it container_id /bin/bash
```

---

## 📦 Docker Image Commands

View all images

```
docker images
```

Delete an image

```
docker rmi image_id
```

Build image using Dockerfile

```
docker build -t image_name:tag .
```

Remove unused images

```
docker image prune
```

---

## 🔎 Docker System Information

Check Docker version

```
docker --version
```

View Docker system information

```
docker info
```

Inspect container details

```
docker inspect container_name
```

---

## 📁 Repository Structure

```
docker-devops-practice/
│
├── README.md
│
├── docker-basics/
│   ├── docker_commands.md
│   ├── docker_images.md
│   └── docker_run_examples.md
│
├── container-interaction/
│   └── container_host_interaction.md
│
├── docker-volumes/
│   └── volume_commands.md
│
├── docker-projects/
│   │
│   ├── nginx-project/
│   │   ├── Dockerfile
│   │   ├── index.html
│   │   └── nginx.conf
│   │
│   └── node-project/
│       ├── Dockerfile
│       ├── app.js
│       ├── package.json
│       └── .dockerignore
│
└── practice-questions/
    └── docker_questions.md
```

---

## 🚀 Example Docker Projects

### Nginx Web Server Project

Navigate to project folder

```
cd docker-projects/nginx-project
```

Build Docker image

```
docker build -t custom-nginx:v1 .
```

Run the container

```
docker run -d -p 8080:80 --name nginx-container custom-nginx:v1
```

Open browser

```
http://localhost:8080
```

---

### Node.js Container Project

Move to project directory

```
cd docker-projects/node-project
```

Build image

```
docker build -t node-demo:v1 .
```

Run container

```
docker run -d -p 3000:3000 --name node-container node-demo:v1
```

Open browser

```
http://localhost:3000
```

---

## 🔄 Docker Lifecycle

Docker container lifecycle normally follows three stages:

**Build**  
Create a Docker image using a Dockerfile.

**Ship**  
Push the image to Docker Hub or another container registry.

**Run**  
Deploy containers from the built image.

---

## 💾 Docker Volume Example

Create a Docker volume

```
docker volume create mydata
```

Run container using volume

```
docker run -dit --name mycontainer -v mydata:/app/data ubuntu
```

Enter container

```
docker exec -it mycontainer /bin/bash
```

Create file inside volume

```
mkdir /app/data
echo "Hello Docker" > /app/data/test.txt
```

Data will remain stored even if the container is removed.

---

## 📖 Description of Important Files

| File | Description |
|-----|-------------|
| docker_commands.md | Basic Docker command reference |
| docker_images.md | Image creation and management |
| container_host_interaction.md | Communication between host and container |
| volume_commands.md | Docker volume usage |
| docker_questions.md | Practice questions from lab |

---

## 🎯 Use Cases

This repository can be useful for:

- DevOps practice and lab submissions  
- Building a GitHub portfolio  
- Preparing for internship interviews  
- Learning Docker step by step  
- Practicing container commands

---

## 📚 Learning Modules

**Unit 1** – Introduction to Docker and DevOps  
**Unit 2** – Basic Docker Commands and Container Management  
**Unit 3** – Docker Projects and Image Creation  
**Unit 4** – Advanced Docker Features and Networking  

---

## 📝 How to Use This Repository

1. Clone the repository
2. Navigate to the required folder
3. Read the markdown notes
4. Run Docker commands locally
5. Practice projects and commands

---

## 📄 License

This repository is created for educational and learning purposes.

---

## 👨‍💻 Author

Chunnu Kumar  
DevOps and Docker Learning Repository
