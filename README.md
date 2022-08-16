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

Using the atak client package the commands look something like this
```
openssl pkcs12 -in atak-920a214a-733b-4780-bd2e-34f21b8a49ae.p12 -out client.pem -clcerts -nokeys
openssl pkcs12 -in atak-920a214a-733b-4780-bd2e-34f21b8a49ae.p12 -nocerts -out server.key -nodes
openssl pkcs12 -in server-d166795f-f546-4ab9-aa15-25954424987a.p12 -out server.pem -nodes
```
