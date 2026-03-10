# Namespaces and Cgroups in Docker

Docker containers rely on Linux kernel features such as namespaces and cgroups to provide isolation and resource control.

---

## What are Namespaces?

Namespaces provide isolation between containers.

They ensure that each container operates independently without interfering with other containers.

Types of namespaces include:

- PID Namespace – isolates process IDs
- Network Namespace – isolates network interfaces
- Mount Namespace – isolates file system mounts
- IPC Namespace – isolates communication between processes
- UTS Namespace – isolates hostname and domain

---

## Benefits of Namespaces

- Process isolation
- Network separation
- Secure container execution
- Independent system environment

---

## What are Cgroups?

Cgroups (Control Groups) manage and limit system resources used by containers.

They control resources such as:

- CPU usage
- Memory usage
- Disk input/output
- Network bandwidth

---

## Why Cgroups are Important

Cgroups prevent a container from consuming too many system resources.

For example:

- Limit CPU usage
- Restrict memory usage
- Prevent system overload

---

## Example Resource Limiting

Limit container memory:
