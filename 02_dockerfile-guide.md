# Dockerfile Guide

Dockerfile ek simple text file hoti hai jisme instructions likhi hoti hain jinke through Docker image automatically build hoti hai.  
Is file ka use karke developers apne application ke liye custom Docker images bana sakte hain.

---

## What is a Dockerfile?

Dockerfile me step-by-step commands likhe jate hain jinko Docker follow karke ek image create karta hai.

Dockerfile ka main purpose:

- Application environment setup karna
- Required dependencies install karna
- Files container me copy karna
- Application ko run karna

---

## Basic Dockerfile Example

Example Dockerfile:


FROM ubuntu:22.04

RUN apt update && apt install -y curl

WORKDIR /app

COPY . /app

CMD ["bash"]


Explanation:

- **FROM** → Base image select karta hai  
- **RUN** → Commands execute karta hai  
- **WORKDIR** → Working directory set karta hai  
- **COPY** → Files container me copy karta hai  
- **CMD** → Default command run karta hai  

---

## Important Dockerfile Instructions

| Instruction | Description |
|-------------|-------------|
| FROM | Base image define karta hai |
| RUN | Commands execute karta hai |
| COPY | Files container me copy karta hai |
| ADD | Files copy ya extract karta hai |
| WORKDIR | Working directory set karta hai |
| EXPOSE | Container port define karta hai |
| CMD | Container start hone par run hone wali command |

---

## Build Docker Image

Dockerfile se image build karne ke liye:


docker build -t myapp:v1 .


Yaha:

- **-t** image ko tag dene ke liye use hota hai  
- **myapp:v1** image ka naam aur version hai  
- **.** current directory ko represent karta hai

---

## Run Container from Image

Image build hone ke baad container run kar sakte hain:


docker run -it myapp:v1


Background me run karne ke liye:


docker run -d myapp:v1


---

## Simple Web Server Example

Example Dockerfile for Nginx:


FROM nginx:alpine

COPY index.html /usr/share/nginx/html/

EXPOSE 80


Image build:


docker build -t nginx-demo:v1 .


Run container:


docker run -d -p 8080:80 nginx-demo:v1


Browser me open kare:


http://localhost:8080


---

## Conclusion

Dockerfile Docker images banane ka ek powerful tool hai.  
Iski help se developers easily applications ko containerized environment me deploy kar sakte hain.

---

Author  
Chunnu Kumar  
Docker DevOps Lab
