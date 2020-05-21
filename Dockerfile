FROM docker.io/websphere-liberty:javaee8
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/

RUN mkdir -p /my-special-folder

RUN chown newuser /my-special-folder

USER newuser

WORKDIR /my-special-folder

