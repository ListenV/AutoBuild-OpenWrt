#!/bin/bash

# 应用补丁
git apply ../LibWrt/ax1800pro.patch
# 新增文件
mv ../LibWrt/20-custom.conf ./package/base-files/files/etc/sysctl.d/
mv ../LibWrt/100-custom.sh  ./package/base-files/files/etc/uci-defaults/

# 可以将要自定义安装的软件放到 package/z-custom/

# filetransfer
#git clone --depth=1 https://github.com/QC3284/luci-app-filetransfer.git package/z-custom/luci-app-filetransfer

echo 'pre.sh execution completed!'