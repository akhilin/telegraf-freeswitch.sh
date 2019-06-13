# telegraf-freeswitch.sh
collects metrics and sends them to influxdb

FreeSWITCH Metrics
This script collects the following FreeSWITCH metrics:
    - total of active channels
    - total of calls
    - Current CPS
Usage:
	./telegraf-freeswitch.sh
	{"active_channels": 4, "active_calls": 12, "cps": 1}   
