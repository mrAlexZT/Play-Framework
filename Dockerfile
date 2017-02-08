FROM java:latest

MAINTAINER mr.AlexZT@gmail.com

WORKDIR /opt/

ADD https://example.lightbend.com/v1/download/play-java /opt/play-java.zip

RUN unzip /opt/play-java.zip && \
rm /opt/play-java.zip

EXPOSE 9000

CMD ["/opt/play-java/sbt", "run"]
