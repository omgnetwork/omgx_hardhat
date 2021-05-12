FROM node:14-buster
RUN apt-get update && apt-get install -y bash git python build-essential

ADD . /opt/hardhat
RUN cd /opt/hardhat && yarn

WORKDIR /opt/hardhat
COPY start.sh /opt/hardhat/start.sh

ENTRYPOINT ["/opt/hardhat/start.sh"]