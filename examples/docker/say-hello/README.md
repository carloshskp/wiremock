# say-hello
Say hello with docker using carloshb/wiremock

## how to run
- Build 

  `docker build . -t say-hello:latest`

- Run detached

  `docker run -d -p 8080:8080 -p 8443:8443 --name wiremock_say_hello say-hello:latest`

- Test

  `curl http://localhost:8080/say-hello`

  Likes

   ```json
  {
    "message": "Hello World from docker"
  }
  ```
