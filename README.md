## Build

```
$ docker build -t mlabouardy/collectd .
```

### Run

```
$ docker run -d -v PATH_TO_CONF/collectd.conf:/etc/collectd/collectd.conf --name collectd mlabouardy/collectd .
```
