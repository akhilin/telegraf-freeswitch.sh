#!/bin/bash
# Author: Akhil Jalagam


num_calls=`sudo fs_cli -x "show calls count" | grep . | awk '{print $1}'`
num_channels=`sudo fs_cli -x "show channels count" | grep . | awk '{print $1}'`
#peak_channels=`sudo fs_cli -x "show status" | grep peak | grep -v 'per Sec' | awk '{print $1}'`
cps=`sudo fs_cli -x "show status" | grep peak | grep 'per Sec' | awk '{print $1}'`

echo "{\"active_channels\": $num_channels, \"active_calls\": $num_calls, \"cps\": $cps}"
