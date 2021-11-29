FROM node:17

LABEL maintainer="marcel@mtdb.nl"
LABEL build_date="2021-11-29"

WORKDIR /var/opt

RUN git clone https://github.com/mboogert/balance-bot-v2.git
WORKDIR /var/opt/balance-bot-v2
RUN npm install

EXPOSE 3000

CMD [ "node", "bb.js" ]
