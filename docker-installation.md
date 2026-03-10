# Docker Installation Guide

This document explains how to install Docker on different operating systems and verify that Docker is working correctly.

---

## What is Docker?

Docker is a containerization platform used to package applications with all their dependencies.  
It allows developers to run applications consistently across different environments.

With Docker, applications run inside **containers**, which are lightweight and portable.

---

## System Requirements

Before installing Docker, ensure your system meets the following requirements:

- 64-bit operating system
- Minimum 4 GB RAM
- Virtualization enabled in BIOS
- Windows 10 / Windows 11 / Linux / macOS

---

## Installing Docker on Windows

### Step 1: Download Docker Desktop

Open the official Docker website:

https://www.docker.com/products/docker-desktop/

Download **Docker Desktop for Windows**.

---

### Step 2: Install Docker Desktop

1. Run the downloaded installer file.
2. Follow the installation instructions.
3. Enable the option for **WSL 2 integration** if prompted.
4. Complete the installation process.

---

### Step 3: Restart the System

After installation is complete, restart your computer.

---

### Step 4: Start Docker Desktop

Open **Docker Desktop** from the Start Menu.

Wait until Docker shows **Docker Engine Running**.

---

## Verify Docker Installation

Open **Command Prompt** or **PowerShell** and run:

```
docker --version
```

Example output:

```
Docker version 24.x.x, build xxxxx
```

---

### Check Docker Information

```
docker info
```

This command displays Docker system details such as containers, images, and storage driver.

---

### Run Test Container

To check if Docker works correctly, run the following command:

```
docker run hello-world
```

If Docker is installed correctly, you will see a message confirming that Docker is running successfully.

---

## Installing Docker on Linux (Ubuntu)

### Update system packages

```
sudo apt update
```

### Install Docker

```
sudo apt install docker.io
```

### Start Docker service

```
sudo systemctl start docker
```

### Enable Docker on startup

```
sudo systemctl enable docker
```

### Check Docker version

```
docker --version
```

---

## Useful Commands After Installation

List Docker images

```
docker images
```

List running containers

```
docker ps
```

List all containers

```
docker ps -a
```

---

## Conclusion

Docker installation is the first step toward learning container technology.  
Once Docker is installed, you can start creating images, running containers, and building containerized applications.

---

## Author

Chunnu Kumar  
DevOps Docker Learning Repository
