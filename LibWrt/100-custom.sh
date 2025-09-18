#!/bin/sh

uci batch << EOF

set network.lan.ipaddr='10.1.1.1/24'
del network.wan6

commit network

set dhcp.lan.start='50'
set dhcp.lan.limit='51'

commit dhcp

set system.@system[0].hostname='Router'

set system.@system[0].zram_size_mb='128'
set system.@system[0].zram_comp_algo='zstd'

set system.@system[0].conloglevel='6'

commit system

EOF
