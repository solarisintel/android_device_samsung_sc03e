
### Initialize local repository
```
$ repo init --depth=1 -u https://github.com/jdcteam/manifests.git -b opt-cm-19.1
```
### Sync
```
$ repo sync -c --current-branch  -j8 --force-sync --no-clone-bundle --no-tags
```
### replace hardware source
```
hardware/samsung 
 <-- rINanDO github
  git clone -b lineage-19.1 https://github.com/rINanDO/android_hardware_samsung.git
```
### Patch system source
Maybe it will fail, so fix it while looking diff sources by the text editor
```
$ cd $HOME/opt-cm-19.1/
$ patch -p0 < device/samsung/sc03e/12.1-patch/assert.diff
$ patch -p0 < device/samsung/sc03e/12.1-patch/bionic.diff
$ patch -p0 < device/samsung/sc03e/12.1-patch/jdc.diff
...
```  
### replaced system source
  
#### 1)  external/chromium-webview
Apk was broken, "not apk is zip format", I used lineage-18.1 file  
```
  git clone -b lineage-18.1 https://github.com/LineageOS/android_external_chromium-webview
```
####  2) system/netd
  Original do not work wifi (cannot connect internet)  
  I used html6405's repository  
```  
  $ git clone -b lineage-19.1-r7 https://github.com/html6405/android_system_netd
```
  device.mk  
```
   # not used EBPF property
   # PRODUCT_PROPERTY_OVERRIDES += \
   #   ro.kernel.ebpf.supported=false
```
  BoardConfig.mk  
```
   # system/netd, Network Routing modified by html6405
   TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true
```

### Set up environment, select device sc03e  
```
$ source build/envsetup.sh
$ lunch 
```
### Build the code  
```
$ mka bacon -j8
```
  
### Not working  
ril(phone, mobile-data)  
gps  
  
### Working  
Audio  
Bluetooth  
Graphics  
Cameras  
Sensors  
Wifi  
USB  

