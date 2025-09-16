# WSL Note

## 1. Mount Windows Drive Letter on WSL File System

### On WSL Linux Console
```
sudo mkdir -p /mnt/d && sudo mount -t drvfs D: /mnt/d
```

## 2. Port Forward Settings from Windows to WSL

### 2.1. Display WSL Local IP Address (On WSL Linux Console)
```
hostname -I
```

### 2.2. Port Forward Setting
```
netsh.exe interface portproxy add v4tov4 listenport=25565 listenaddress=* connectport=25565 connectaddress=172.19.53.114
```

### 2.3. Confirm Port Forward Setting
```
netsh.exe interface portproxy show all
```
```
Listen on ipv4: Connect to ipv4
Address         Port        Addres         Port
--------------- ----------  -------------- ----------
*               25565       172.19.53.114  25565
```

## 3. USB Mapping Settings from Windows to WSL
### 3.1. Install `usbipd`
```
winget install --interactive --exact dorssel.usbipd-win
```

### 3.2. Show List of USB Devices
```
usbipd list
```
```
Connected:
BUSID  VID:PID    DEVICE                                                        STATE
2-1    18a5:0302  USB Flash Drive                                               Not shared
2-8    04f2:b7ba  Integrated Camera                                             Not shared
2-10   0bda:4853  Realtek Bluetooth Adapter                                     Not shared

Persisted:
GUID                                  DEVICE
```

### 3.3. Share the USB Device
```
usbipd bind --busid 2-1
```
```
usbipd list
```
```
Connected:
BUSID  VID:PID    DEVICE                                                        STATE
2-1    18a5:0302  USB Flash Drive                                               Shared
2-8    04f2:b7ba  Integrated Camera                                             Not shared
2-10   0bda:4853  Realtek Bluetooth Adapter                                     Not shared

Persisted:
GUID                                  DEVICE
```

### 3.4. Attach the USB Device to the WSL
```
usbipd attach --auto-attach --wsl --busid 2-1
```
```
usbipd: info: Using WSL distribution 'Ubuntu-24.04' to attach; the device will be available in all WSL 2 distributions.
usbipd: info: Loading vhci_hcd module.
usbipd: info: Detected networking mode 'nat'.
usbipd: info: Using IP address 172.27.144.1 to reach the host.
```
```
usbipd list
```
```
Connected:
BUSID  VID:PID    DEVICE                                                        STATE
2-1    18a5:0302  USB Flash Drive                                               Attached
2-8    04f2:b7ba  Integrated Camera                                             Not shared
2-10   0bda:4853  Realtek Bluetooth Adapter                                     Not shared

Persisted:
GUID                                  DEVICE
```
