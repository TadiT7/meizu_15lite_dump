#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31237410:425ec53f87417c573841e73275f0dfd736962651; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24773918:b6ec2cc1eb0ba42474c9043a7d2c2d4575d9655e EMMC:/dev/block/bootdevice/by-name/recovery 425ec53f87417c573841e73275f0dfd736962651 31237410 b6ec2cc1eb0ba42474c9043a7d2c2d4575d9655e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
