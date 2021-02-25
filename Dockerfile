FROM openjdk:8-jre-alpine
LABEL maintainer="Carlos Bernardes <contato@carloshb.com.br>"

ENV PORT 8080
ENV HTTPS_PORT 8443

WORKDIR /home/wiremock

RUN mkdir -p /var/wiremock/lib/
RUN wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.27.2/wiremock-standalone-2.27.2.jar \
    -O /var/wiremock/lib/wiremock-standalone.jar

EXPOSE $PORT $HTTPS_PORT
CMD java -cp /var/wiremock/lib/*:/var/wiremock/extensions/* com.github.tomakehurst.wiremock.standalone.WireMockServerRunner --port $PORT --https-port $HTTPS_PORT
