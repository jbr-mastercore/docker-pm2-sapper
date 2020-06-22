Docker PM2 Sapper v0.1.0
========
powered by keymetrics/pm2:latest-stretch
[Sapper][1] The next small thing in web development.



Available tags you can use: 1.0

## docker-compose.yml

```yaml
version: '2'
services:
  sapper:
    image: jbracho/pm2-sapper:1.0
    restart: always
    volumes:
      - ./app/:/usr/src/app/sapperApp/
      - ./pm2-sapper/:/usr/src/app/
    ports:
      - 80:3000
```

use 

docker exec -it container pm2 (logs, monit, restart id, stop, any more)
