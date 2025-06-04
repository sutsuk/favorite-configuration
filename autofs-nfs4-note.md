# Mount NFS4 Filesystem with AutoFS

- Modify `/etc/auto.master`
```
vim /etc/auto.master
```
```
/nfs /etc/auto.nfs
+dir:/etc/auto.master.d
+auto.master
```

- Create `/etc/auto.nfs`
```
vim /etc/auto.nfs
```
```
home -fstype=nfs4,rw,hard,intr nfs-server:/export/home/
```
