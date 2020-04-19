
Referenced devices from https://github.com/aex-i9300  
Unnecessary description remained  

Cpu governor is pegasusq  
  see kernel source and init.targert.rc 

Added power module  
   device/power  

Led class name is renamed to standard name (/dev/class/leds/red, green, blue)   
   kernel/drivers/leds/leds-an30259a.c is modified  

Deleted smdk4412-common/rootdir  
   now using sc03e/rootdir  

Added drm widevine from GitHub Unleagcy Android vendor/widevine  

Replaced hardware's source   
  cp device/sc03e/patch/reference-ril.c.sc03e  hardware/ril/reference-ril/reference-ril.c   

System source modified  
1.SC03E charger mode  
  system/core/init/init.cpp  
  
2. support TARGET_USES_LEGACY_ADB_INTERFACE  
  system/core/adb 
  
3. autosuspend_earlysuspend.c added  
  system/core/libsuspend  
