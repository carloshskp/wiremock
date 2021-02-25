# carloshb/wiremock
Wiremock Standalone Server with OpenJDK 8 using alpine linux

### How to use?
Create your wiremock project files and add the follow setup

#### Setup
You can use docker or docker-compose

##### With Docker
```
FROM carloshb/wiremock

ENV PORT 8080
ENV HTTPS_PORT 8443

COPY . /home/wiremock
```

##### With Docker Compose/Stack

```
version: '3.8'

services:
  wiremock:
    image: carloshb/wiremock
    volumes:
      - ./:/home/wiremock
    environment:
      - PORT=8080
      - HTTPS_PORT=8443
    ports:
      - 8080:8080
      - 8443:8443
```

### Environment
| Variables | default | description |
|:----------|:-------:| -----------:|
| PORT      |8080     | Change wiremock http port
| HTTPS_PORT|8443     | Change wiremock https port

### Examples
- [Using Dockerfile](/examples/docker/say-hello/README.md)
- [Using docker-compose.yml](/examples/docker-compose/say-hello/README.md)
