FROM docker.io/websphere-liberty:javaee8
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/

RUN mkdir -pv /my-special-folder

RUN chown root /my-special-folder

