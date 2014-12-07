FROM dockerfile/nodejs
MAINTAINER Alejandro Baez <Alejan.Baez@gmail.com>

RUN git clone https://github.com/seejohnrun/haste-server.git /opt/haste

# Adding customization theme setup to haste
ADD add/theme/ /opt/haste/static/
ADD add/config.js /opt/haste/
WORKDIR /opt/haste

RUN npm install

expose 7777

cmd ["npm", "start"]
