![GitHub Workflow Status](https://img.shields.io/github/workflow/status/carloshskp/wiremock/ci)

# [carloshb/wiremock](https://github.com/carloshskp/wiremock)
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
#### Using terminal
Clone the repository to use examples

```
git clone git@github.com:carloshskp/wiremock.git
```
Enter on wiremock directory
```
cd wiremock
```
Run container

```
docker run -v ${PWD}/examples/docker/say-hello:/home/wiremock -d --name wiremock-example -e PORT=8070 carloshb/wiremock
``` 

Test using curl

```
curl http://localhost:8070/say-hello
```

Output:

```
{
  "message": "Hello World from Docker"
}

```

#### [Using Dockerfile](https://github.com/carloshskp/wiremock/blob/master/examples/docker/say-hello/README.md)

#### [Using docker-compose.yml](https://github.com/carloshskp/wiremock/blob/master/examples/docker-compose/say-hello/README.md)
