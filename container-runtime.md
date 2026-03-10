# Container Runtime

Container runtime is the software responsible for running containers on a system.  
It manages container lifecycle, resource allocation, and communication with the operating system.

---

## What is Container Runtime?

A container runtime is a component that executes container images and manages container processes.

It performs tasks such as:

- Creating containers
- Starting and stopping containers
- Managing container resources
- Handling container networking

---

## How Containers Work

Containers use the host operating system kernel.  
Unlike virtual machines, containers do not require a full operating system.

This makes containers:

- Lightweight
- Fast to start
- Efficient in resource usage

---

## Container Runtime in Docker

Docker uses **containerd** as its runtime.

Workflow:

1. Docker CLI sends command
2. Docker daemon processes request
3. containerd runs the container
4. Linux kernel isolates the container

---

## Container Lifecycle

A container typically goes through the following stages:

1. **Create** – Container is created from an image
2. **Start** – Container begins execution
3. **Running** – Application runs inside container
4. **Stop** – Container process stops
5. **Remove** – Container is deleted

---

## Advantages of Container Runtime

- Faster application deployment
- Lightweight compared to virtual machines
- Easy scalability
- Better resource utilization

---

## Conclusion

Container runtime is a core component of Docker and container platforms.  
It ensures that containers run efficiently and securely on the host system.
