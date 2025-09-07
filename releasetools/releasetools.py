import common
import struct

def FullOTA_InstallEnd(info):
        info.script.AppendExtra('ifelse(is_mounted("/system_root"), unmount("/system_root"));')
        info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/platform/dw_mmc/by-name/SYSTEM", "/system_root", "");')
	info.script.AppendExtra('run_program("/sbin/busybox", "mkdir", "/system_root/firmware");')
	info.script.AppendExtra('run_program("/sbin/busybox", "cnmod", "771", "/system_root/firmware");')
	info.script.AppendExtra('run_program("/sbin/busybox", "chown", "system:system", "/system_root/firmware");')
	info.script.AppendExtra('run_program("/sbin/busybox", "mkdir", "/system_root/tombstones");')
	info.script.AppendExtra('run_program("/sbin/busybox", "cnmod", "775", "/system_root/tombstones");')
	info.script.AppendExtra('run_program("/sbin/busybox", "chown", "system:system", "/system_root/tombstones");')
	info.script.AppendExtra('unmount("/system_root");')

