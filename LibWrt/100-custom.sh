#!/bin/sh

uci batch << EOF

del network.lan.ipaddr
add_list network.lan.ipaddr='10.1.1.1/24'
del network.wan6

commit network

del dhcp.lan.dhcp_option
add_list dhcp.lan.dhcp_option='6,10.1.1.1'
set dhcp.lan.start='50'
set dhcp.lan.limit='51'

commit dhcp

set system.@system[0].hostname='Router'

set system.@system[0].zram_size_mb='128'
set system.@system[0].zram_comp_algo='zstd'

commit system

EOF
