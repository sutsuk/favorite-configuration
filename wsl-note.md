# WSL Note

## 1. Mount Windows Drive Letter on WSL File System

### On WSL Linux Console
```
sudo mkdir -p /mnt/d && sudo mount -t drvfs D: /mnt/d
```

## 2. Port Forward Settings from Windows to WSL

### 2.1. Display WSL Local IP Address (On WSL Linux Console)
```
ip r |tail -n1|cut -d ' ' -f9
```

### 2.2. Port Forward Setting
```
netsh.exe interface portproxy add v4tov4 listenport=25565 listenaddress=* connectport=25565 connectaddress=172.19.53.114
```
