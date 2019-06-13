#!/bin/bash
# Author: Akhil Jalagam


num_calls=`fs_cli -x "show channels count" | grep . | awk '{print $1}'`
num_channels=`fs_cli -x "show status" | grep peak | grep -v 'per Sec' | awk '{print $1}'`
cps=`fs_cli -x "show status" | grep peak | grep 'per Sec' | awk '{print $1}'`

echo "{\"active_channels\": $num_channels, \"active_calls\": $num_calls, \"cps\": $cps}"
