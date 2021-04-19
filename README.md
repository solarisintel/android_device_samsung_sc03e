
### Initialize local repository
```
repo init -u git://github.com/crdroidandroid/android.git -b 9.0
```
### Sync
```
repo sync -j16
```
### replace hardware source
```
hardware/ril             <-- CustomRoms github(https://github.com/CustomROMs/android_hardware_ril.git)
hardware/samsung         <-- CustomRoms github(https://github.com/CustomROMs/android_hardware_samsung.git)
```
### Patch system source
Maybe it will fail, so fix it while looking diff sources by the text editor
```
$ cd $HOME/crdoid-9.0/
$ patch -p1 < $HOME/crdoid-9.0/device/samsung/sc03e/patch-9.0/crdroid-9.0-earlysupend.patch.txt
$ patch -p1 < $HOME/crdoid-9.0/device/samsung/sc03e/patch-9.0/crdroid-9.0-opt-telephony.patch.txt
$ patch -p1 < $HOME/crdoid-9.0/device/samsung/sc03e/patch-9.0/lineage-16.0-ashmemtacking.patch.txt
...
```
### Set up environment
```
$ source build/envsetup.sh
```
### Build the code
```
$ brunch sc03e
```
