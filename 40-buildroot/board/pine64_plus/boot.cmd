setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait
setenv video-mode sunxi:1920x1080@50,monitor=dvi,hpd=0,edid=1


fatload mmc 0 $kernel_addr_r Image
fatload mmc 0 $fdt_addr_r sun50i-a64-pine64_plus.dtb

booti $kernel_addr_r - $fdt_addr_r
