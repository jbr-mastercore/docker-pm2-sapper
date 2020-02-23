Docker PM2 Sapper v0.27.9
========
powered by pm2:latest-slim image

[Sapper][1] The next small thing in web development.


Instructions for Composer
========

```
1) $ docker-compose up -d

2) go to your web url (eg. http://127.0.0.1:3000)
```


Available tags you can use in docker compose (default master): master, minimal or caviar

## docker-compose.yml

```yaml
version: '2'
services:
  sapper:
    image: aamservices/pm2-sapper:latest
    restart: unless-stopped
    volumes:
      - sapper_data:/usr/src/app
    networks:
      - internal
    ports:
      - 3000
volumes:
  sapper_data:
    driver: local
```


[1]: https://sapper.svelte.dev
