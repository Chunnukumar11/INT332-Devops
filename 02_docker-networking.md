# Docker Networking

Docker networking containers ko ek dusre ke saath aur host system ke saath communicate karne ki facility deta hai.  
Iski help se multiple containers ek network me connect ho sakte hain aur applications easily interact kar sakti hain.

---

## What is Docker Networking?

Docker networking ka use containers ko isolated environment me run karte hue bhi communication allow karne ke liye kiya jata hai.

Docker automatically container ke liye network create karta hai, lekin user custom networks bhi bana sakta hai.

---

## Types of Docker Networks

Docker me commonly 3 types ke networks use hote hain:

| Network Type | Description |
|--------------|-------------|
| Bridge | Default network for containers |
| Host | Container directly host network use karta hai |
| None | Container ke liye koi network nahi hota |

---

## List Available Networks

System me available networks dekhne ke liye command:


docker network ls


Ye command existing Docker networks show karti hai.

---

## Create a New Network

Custom network create karne ke liye:


docker network create mynetwork


Is command se ek naya network ban jata hai jiska naam **mynetwork** hai.

---

## Run Container in a Network

Container ko kisi specific network me run karne ke liye:


docker run -d --name webserver --network mynetwork nginx


Yaha:

- `--name` container ka naam set karta hai  
- `--network` container ko selected network me attach karta hai  

---

## Inspect Network

Network ki details dekhne ke liye:


docker network inspect mynetwork


Is command se connected containers aur network configuration show hota hai.

---

## Communication Between Containers

Agar do containers same network me hain to wo ek dusre se communicate kar sakte hain.

Example:


docker run -d --name container1 --network mynetwork nginx
docker run -it --name container2 --network mynetwork ubuntu bash


Phir container2 ke andar:


ping container1


Isse container1 se connection check ho jayega.

---

## Remove Network

Agar network delete karna ho:


docker network rm mynetwork


---

## Conclusion

Docker networking containers ko connect karne ka important feature hai.  
Iski help se multi-container applications easily deploy ki ja sakti hain.

---

Author  
Chunnu Kumar  
Docker DevOps Lab
