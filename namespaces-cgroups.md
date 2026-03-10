# Namespaces and Cgroups

Containers use Linux kernel features for isolation and resource management.

## Namespaces

Namespaces provide isolation between containers so that each container works independently.

Types of namespaces:

- PID Namespace → isolates process IDs  
- Network Namespace → isolates network interfaces  
- Mount Namespace → isolates file systems  
- User Namespace → isolates user IDs  
- UTS Namespace → isolates hostname  
- IPC Namespace → isolates communication between processes  

## Control Groups (cgroups)

Cgroups limit and manage the resources used by containers.

Resources controlled:

- CPU usage
- Memory usage
- Disk I/O
- Network bandwidth

Example command:

docker run -m 512m nginx

This command limits the container memory to **512 MB**.
