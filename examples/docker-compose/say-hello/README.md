![GitHub Workflow Status](https://img.shields.io/github/workflow/status/carloshskp/wiremock/ci)

# say-hello
Say hello with docker-compose using carloshb/wiremock

## how to run
- Run detached

  `docker-compose up -d`

- Test

  `curl http://localhost:8080/say-hello`

  Likes

   ```json
  {
    "message": "Hello World from docker-compose"
  }
  ```
