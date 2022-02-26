# qemu-system-start
系统文件比较大，我这里只放了sh脚本，也可以去re
一个启动qemu系统模式的小脚本.  
已经放好了需要的文件，支持mips，mipsel，arm。  
直接放好了需要的文件，直接启动即可： 
```
sudo ./start-mips.sh
sudo ./start-mipesl.sh
sudo ./start-arm.sh
```
自定义的主机ip为：192.168.5.1  
启动后使用下面命令来设置ip
```
ifconfig eht0 192.168.5.12/24 up
```
