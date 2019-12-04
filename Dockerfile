FROM node:10-jessie

LABEL maintainer="nicola.reggiani@codelaundry.io"

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list

RUN apt-get update

RUN apt-get install -y -qq --force-yes mongodb-org-tools
RUN apt-get clean

RUN npm install pm2 -g
