# Credentials Folder


1. Server URL or IP
```
23.251.148.241
```
2. SSH username

```
souza
```
3. Login to the google cloud

```
chmod 400 ssh_keys/souza
ssh -i ssh_keys/souza -l souza 23.251.148.241
```

4. Database URL or IP and port used.
```
23.251.148.241:3306
```
5. Database username: root
6. Database password: None
7. Database name: CSC
8. This database can only be accessed while logged in to the cloud
```
sudo mysql
```

9. Port forward to your computer

```
ssh -i ssh_keys/souza -N -f -L localhost:3306:localhost:3306 23.251.148.241
```
