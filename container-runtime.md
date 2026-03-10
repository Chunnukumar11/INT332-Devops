# Container Runtime

A container runtime is software responsible for running containers and managing their lifecycle.

## Functions of Container Runtime
- Start and stop containers
- Manage container resources
- Handle container processes
- Ensure isolation

## Examples of Container Runtime
- runc
- containerd
- CRI-O

## How Docker Uses Runtime

1. User runs a command  
   docker run nginx

2. Docker CLI sends request to Docker Daemon

3. Docker daemon pulls the image if not available

4. Container runtime creates and runs the container

## Container Lifecycle
- Created
- Running
- Paused
- Stopped
- Deleted
- 
