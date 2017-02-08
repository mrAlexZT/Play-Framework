FROM java:latest

MAINTAINER mr.AlexZT@gmail.com

WORKDIR /opt/

ADD https://example.lightbend.com/v1/download/play-java /opt/play-java.zip

RUN unzip play-java.zip && \
rm play-java.zip && \
./opt/play-java/sbt run

EXPOSE 9000

CMD ["/opt/play-java/sbt", "run"]
