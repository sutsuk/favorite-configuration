# Mount NFS4 Filesystem with AutoFS

## 1. Install AutoFS and NFS Common
```
sudo apt install autofs nfs-common
```

## 2. Modify `/etc/auto.master`
```
sudo vim /etc/auto.master
```
```
/nfs /etc/auto.nfs
+dir:/etc/auto.master.d
+auto.master
```

## 3. Create `/etc/auto.nfs`
```
sudo vim /etc/auto.nfs
```
```
home -fstype=nfs4,rw,hard,intr,proto=tcp,port=2049 nfs-server:/export/home/
```

## 4. Reload AutoFS
```
sudo systemctl restart autofs
```
