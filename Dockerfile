FROM java:latest

MAINTAINER mr.AlexZT@gmail.com

ADD https://example.lightbend.com/v1/download/play-java /opt/play-java.zip

RUN unzip /opt/play-java.zip && \
rm /opt/play-java.zip

WORKDIR /opt/play-java

EXPOSE 9000

CMD ["sbt run"]
