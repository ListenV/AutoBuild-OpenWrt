#!/bin/bash

# 修改 argon 为默认主题,不再集成luci-theme-bootstrap主题
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-nginx/Makefile

# 修改luci默认web服务器
#sed -i 's/luci-light/luci-nginx/g' feeds/luci/collections/luci/Makefile

echo 'post.sh execution completed!'