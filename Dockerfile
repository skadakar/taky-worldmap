FROM nodered/node-red

RUN npm install --unsafe-perm --no-update-notifier --no-fund 
RUN npm install node-red-contrib-tcp-tls node-red-contrib-web-worldmap
        
COPY settings.js /data/settings.js
COPY flows.json /data/flows.json

EXPOSE 1880

ENTRYPOINT ["npm", "start", "--cache", "/data/.npm", "--", "--userDir", "/data"]
