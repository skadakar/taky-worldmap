### TAKY Wordlmap

https://github.com/skadakar/taky-worldmap

https://hub.docker.com/r/skadakar/taky-worldmap

Map will be available at http://anyip:1880/tak


Self contained docker image to use with TAKY to display Ampledatas node-red map
https://ampledata.org/node_red_atak.html


This implementation should be server agnostic, but only tested on taky.

Overwrite settings by attaching config files to the /data/ folder, as with normal node-red docker. 

Supported env variables:
```
    environment:
      - COT_IP=127.0.0.1
      - COT_PORT=8089
      - COT_ENDPOINT=/tak
```

Keys must be provided in pem/crt/key

They must be attached to the container like so: 
```
      - /whatever/ca.pem:/data/certs/ca.pem
      - /whatever/server.pem:/data/certs/server.pem
      - /whatever/server.key:/data/certs/server.key
```

