FROM seejohnrun/haste-server

ADD add/ /opt/haste/static/

WORKDIR /opt/haste

expose 7777

cmd ["npm", "start"]
