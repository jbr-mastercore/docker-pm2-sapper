FROM keymetrics/pm2:latest-stretch
LABEL maintainer="Jose Bracho <brachojgbp@hotmail.com>"

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

COPY ./pm2-sapper/ecosystem.config.js /usr/src/app

RUN mkdir -p sapperApp 

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
