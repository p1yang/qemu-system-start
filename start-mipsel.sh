#set network
sudo brctl addbr virbr0
sudo ifconfig virbr0 192.168.5.1/24 up
sudo tunctl -t tap0
sudo ifconfig tap0 192.168.5.11/24 up
sudo brctl addif virbr0 tap0

qemu-system-mipsel -M malta -kernel vmlinux-3.2.0-4-4kc-malta-el -hda debian_wheezy_mipsel_standard.qcow2 -append "root=/dev/sda1" -netdev tap,id=tapnet,ifname=tap0,script=no -device rtl8139,netdev=tapnet -nographic
