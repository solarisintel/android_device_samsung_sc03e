
### Initialize local repository
```
$ repo init --depth=1 -u https://github.com/jdcteam/manifests.git -b opt-cm-18.1
```
### Sync
```
$ repo sync -c --current-branch  -j8 --force-sync --no-clone-bundle --no-tags
```
### replace hardware source
```
hardware/samsung 
 <-- rINanDO github(https://github.com/rINanDO/android_hardware_samsung.git)  
  
hardware/samsung/exynos4/hal/libgralloc_ump  
 <-- CustomRoms github(https://github.com/CustomRoms/android_hardware_samsung.git)  
```
### Patch system source
Maybe it will fail, so fix it while looking diff sources by the text editor
```
$ cd $HOME/opt-cm-18.1/
$ patch -p0 < device/samsung/sc03e/11.0-patch/assert.diff
$ patch -p0 < device/samsung/sc03e/11.0-patch/bionic.diff
$ patch -p0 < device/samsung/sc03e/11.0-patch/frameworks-base.diff
...
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

