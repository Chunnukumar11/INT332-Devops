Docker volumes ka use container ke data ko permanently store karne ke liye kiya jata hai.  
Normally jab container delete ho jata hai to uska data bhi delete ho jata hai.  
Volumes ki help se data container ke bahar store hota hai aur safe rehta hai.

---

## What is a Docker Volume?

Docker volume ek storage mechanism hai jo container ke data ko host system par store karta hai.

Iska main purpose:

- Data persistence
- Data sharing between containers
- Backup and recovery

---

## Create Docker Volume

Naya volume create karne ke liye command:

```
docker volume create myvolume
```

Is command se **myvolume** naam ka volume create ho jata hai.

---

## List All Volumes

System me available volumes dekhne ke liye:

```
docker volume ls
```

Ye command sabhi volumes ki list show karti hai.

---

## Inspect Volume

Volume ki detail dekhne ke liye:

```
docker volume inspect myvolume
```

Is command se volume ka location aur configuration show hota hai.

---

## Run Container with Volume

Volume ko container ke saath attach karne ke liye:

```
docker run -d -v myvolume:/app/data ubuntu
```

Explanation:

- **myvolume** → volume ka naam  
- **/app/data** → container ke andar ka path

---

## Example: Store Data in Volume

Container ke andar file create kare:

```
echo "Hello Docker Volume" > /app/data/file.txt
```

Agar container delete ho jaye tab bhi data volume me safe rahega.

---

## Remove Docker Volume

Volume delete karne ke liye:

```
docker volume rm myvolume
```

Note: Volume delete tabhi hoga jab koi container usse use na kar raha ho.

---

## Advantages of Docker Volumes

- Data persistent rehta hai
- Containers ke beech data share ho sakta hai
- Backup lena easy hota hai
- Container delete hone par bhi data safe rehta hai

---

## Conclusion

Docker volumes containerized applications me data ko secure aur persistent rakhne ka important method hain.  
Production environments me volumes ka use commonly databases aur application data store karne ke liye kiya jata hai.

---

Author  
Chunnu Kumar  
Docker DevOps Lab
