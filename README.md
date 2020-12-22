  
1. build system is github aex-i9300  
https://github.com/aex-i9300/platform_manifests  
  
2. replaced system source 
  
1) hardware/ril/  
  
2) hardware/libhardware/include/hardware/gps.h, gnss-base.h  
   see sc03e/include/hardware/  
  
3. notes  
  
note-1) supported LTE  
  
smdk4412-common/shim/libsecril-shim/secril-shim.cpp  
``` c   
....| RAF_HSPAP | RAF_UMTS | RAF_LTE, /* rat */  
```  
note-2) WIFI fixed.   
smdk4412-common/BoardCommonConfig.mk  
``` sh   
# HIDL   
DEVICE_MANIFEST_FILE := device/samsung/smdk4412-common/manifest.xml  
```   
note-3) lineage.livedisplay is deleted.  
  
because not existing in hardware/samsung.    
  
smdk4412-common/manifest.xml  
...  
    <hal format="hidl">  
        <name>vendor.lineage.livedisplay</name>  
        <transport>hwbinder</transport>  
...  
  
note-4) Unnecessary shared library  

libsamsung_symbols.so  
libshim_atomic.so  
  
note-5) aosp.dependencies not modified.  
  
branch aex-9.x source is  
   kernel_samsung_smdk4x12dcm  
   device_samsung_sc03e  
   device_samsung_smdk4412-common  
   hardware_ril  
   vendor_samsung_sc03  

Notes-6) vm memory (SC03E is RAM 2GB)  
6-1)  
dalvik.vm.heapsize=512m ---> ng  
dalvik.vm.heapsize=360m ---> ok  
  
6-2)  
dalvik.vm.heapgrowthlimit=192m --> ok  

