
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
hardware/rild            <-- CustomRoms github(lineage-16.0)
hardware/samsung         <-- CustomRoms github(lineage-16.0)
```
### Patching 
### Maybe it will fail, so fix it while looking diff sources by the text editor
```
$ patch -p1 < fake-iccid-patch.txt
$ patch -p1 < DISABLE_ASHMEM_TRACKING.patch.txt
```
### Set up environment
```
$ source build/envsetup.sh
```
### Build the code
```
$ brunch sc03e
```
