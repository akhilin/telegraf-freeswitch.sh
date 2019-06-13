# telegraf-freeswitch.sh
collects metrics and sends them to influxdb

```
FreeSWITCH Metrics
This script collects the following FreeSWITCH metrics:
    - total of active channels
    - total of calls
    - Current CPS
```

# Usage

```
	./telegraf-freeswitch.sh
	{"active_channels": 4, "active_calls": 12, "cps": 1}   
```

# Configuration

```
# Read flattened metrics from one or more commands that output JSON to stdout
[[inputs.exec]]
  # Set interval to 5s
  interval = "5s"

  # the command to run
  command = "/opt/telegraf-freeswitch.sh'

  # Data format to consume. This can be "json" or "influx" (line-protocol)
  # NOTE json only reads numerical measurements, strings and booleans are ignored.
  data_format = "json"

  # measurement name suffix (for separating different commands)
  name_suffix = "_freeswitch"
```
