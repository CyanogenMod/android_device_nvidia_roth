# Android fstab file.
#<src>                                                  <mnt_point>         <type>    <mnt_flags>                                                                         <fs_mgr_flags>
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

/dev/block/platform/sdhci-tegra.3/by-name/APP           /system             ext4      ro                                                                                  wait
/dev/block/platform/sdhci-tegra.3/by-name/CAC           /cache              ext4      noatime,nosuid,nodev,data=writeback,nodelalloc,errors=panic    wait
/dev/block/platform/sdhci-tegra.3/by-name/UDA           /data               ext4      noatime,nosuid,nodev,data=ordered,noauto_da_alloc,errors=panic    wait,encryptable=/dev/block/platform/sdhci-tegra.3/by-name/MDA
/dev/block/platform/sdhci-tegra.3/by-name/TMP           /mft              ext4      noatime,nosuid,nodev,data=writeback,nodelalloc,errors=panic    wait
