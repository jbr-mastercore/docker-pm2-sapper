FROM keymetrics/pm2:latest-stretch
LABEL maintainer="Jose Bracho <brachojgbp@gmail.com>"

WORKDIR /usr/src/app

RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

COPY ecosystem.config.js /

RUN npx degit "sveltejs/sapper-template#rollup" sapperApp && \
    cd sapperApp && \
    npm install

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
