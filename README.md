
# Initialize local repository
```
repo init -u https://github.com/PixelExperience/manifest -b pie
```
# Sync
```
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```
# Patching 
# Maybe it will fail, so fix it while looking diff sources by the text editor
```
$ patch -p1 < fake-iccid-patch.txt
$ patch -p1 < DISABLE_ASHMEM_TRACKING.patch.txt
```
# Set up environment
```
$ source build/envsetup.sh
```
# Choose a target
```
$ lunch aosp_sc03e-userdebug
```
# Build the code
```
$ mka bacon -j8
```
