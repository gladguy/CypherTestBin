FROM ubuntu:16.04
MAINTAINER jaxon1987
RUN apt-get update && \
apt-get install -y vim less node-less net-tools npm psmisc  wget lsof apt-utils
RUN npm install less
COPY . /app
WORKDIR /app
EXPOSE 30301
EXPOSE 6000
EXPOSE 8000
EXPOSE 7100
WORKDIR /app/
CMD /bin/bash ./start.sh
