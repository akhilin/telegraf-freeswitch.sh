#!/bin/bash
'''
FreeSWITCH Metrics
This script collects the following FreeSWITCH metrics:
    - total of active channels
    - total of calls
    - Current CPS

Usage:
	./telegraf-freeswitch.sh
	{"active_channels": 4, "active_calls": 12, "cps": 1}    
'''

num_calls=`fs_cli -x "show channels count" | grep . | awk '{print $1}'`
num_channels=`fs_cli -x "show status" | grep peak | grep -v 'per Sec' | awk '{print $1}'`
cps=`fs_cli -x "show status" | grep peak | grep 'per Sec' | awk '{print $1}'`

echo "{\"active_channels\": $num_channels, \"active_calls\": $num_calls, \"cps\": $cps}"
