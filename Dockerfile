FROM java:latest

MAINTAINER mr.AlexZT@gmail.com

ADD https://example.lightbend.com/v1/download/play-java /opt/play-java.zip

RUN unzip /opt/play-java.zip -d /opt && \
rm /opt/play-java.zip

WORKDIR /opt/play-java

#RUN ./opt/play-java/sbt        

EXPOSE 9000

#ENTRYPOINT ["sbt", "run"]

CMD ["./sbt"]
