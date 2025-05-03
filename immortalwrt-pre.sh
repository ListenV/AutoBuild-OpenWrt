#!/bin/bash

# iptvhelper
#git clone --depth=1 https://github.com/riverscn/openwrt-iptvhelper package/luci-app-iptvhelper

# 高级系统设置 包括smartdns，openclash，防火墙，DHCP等。（内置luci-app-fileassistant文件助手）
#git clone --depth=1 https://github.com/sirpdboy/luci-app-advanced package/luci-app-advanced

# DNSFilter 广告过滤
#git clone --depth=1 https://github.com/kiddin9/luci-app-dnsfilter package/luci-app-dnsfilter
# 修改DNSFilter 在Web菜单中所处的位置
#sed -i 's/services/control/g' package/luci-app-dnsfilter/luasrc/controller/dnsfilter.lua
#sed -i 's/9//g' package/luci-app-dnsfilter/luasrc/controller/dnsfilter.lua

# luci-app-onliner 通过nlbwmon实现的实时网速查看每两秒更新 需要luci-app-nlbwmon
#git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner package/luci-app-onliner

# WolPlus 网络唤醒
#git clone --depth=1 https://github.com/siwind/luci-app-wolplus package/luci-app-wolplus

# 删除自带的解锁音乐
#rm -rf package/lean/luci-app-unblockmusic
# 使用官方版本的解锁音乐
#git clone --depth=1 https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic

# 删除自带的luci-app-wrtbwmon，使用自定义的
#rm -rf package/lean/luci-app-wrtbwmon
# 自定义软件包，包含speedlimit、weburl、wolplus、wrtbwmon
#git clone --depth=1 https://github.com/skyls03/sky03-openwrt-packages.git package/sky03-openwrt-packages

# 修改openwrt登陆地址
sed -i 's/192.168.1.1/10.1.1.10/g' package/base-files/files/bin/config_generate
#uci set network.lan.ipaddr='192.168.10.100'
#uci set network.lan.dns='223.5.5.5'

# 版本号里显示自己想要的文字
#sed -i "s/OpenWrt/OpenWrt By sky03 build $(TZ=UTC-8 date "+%y.%m.%d") @/g" package/lean/default-settings/files/zzz-default-settings

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改NPS在Web中的位置          默认顺序：100
#sed -i 's/services/nas/g' package/lean/luci-app-nps/luasrc/controller/nps.lua
#sed -i 's/100/50/g' package/lean/luci-app-nps/luasrc/controller/nps.lua

# 修改ZeroTier在Web中的位置         默认顺序：45
#sed -i 's/vpn/nas/g' package/lean/luci-app-zerotier/luasrc/controller/zerotier.lua
#sed -i 's/VPN/NAS/g' package/lean/luci-app-zerotier/luasrc/controller/zerotier.lua
#sed -i 's/45/100/g' package/lean/luci-app-zerotier/luasrc/controller/zerotier.lua

# Transmission                  默认顺序：44
#sed -i 's/vpn/nas/g' package/lean/luci-app-zerotier/luasrc/controller/zerotier.lua

# 京东签到                  默认顺序：10
#sed -i 's/10/200/g' package/lean/luci-app-jd-dailybonus/luasrc/controller/jd-dailybonus.lua

# Go-ali-WebDav                 默认顺序：10

# SSRP                          默认顺序：10
#sed -i 's/50/5/g' package/helloworld/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
# Openclash                     默认顺序：50   问题
#sed -i 's/50/5/g' package/luci-app-openclash/luci-app-openclash/luasrc/controller/openclash.lua
