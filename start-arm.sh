#set network
sudo brctl addbr virbr0
sudo ifconfig virbr0 192.168.5.1/24 up
sudo tunctl -t tap0
sudo ifconfig tap0 192.168.5.11/24 up
sudo brctl addif virbr0 tap0

qemu-system-arm -M vexpress-a9 -kernel vmlinuz-3.2.0-4-vexpress -initrd initrd.img-3.2.0-4-vexpress -drive if=sd,file=debian_wheezy_armhf_standard.qcow2 -append "root=/dev/mmcblk0p2 console=ttyAMA0" -net nic -net tap,ifname=tap0,script=no,downscript=no -nographic
