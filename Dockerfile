FROM java:latest

MAINTAINER mr.AlexZT@gmail.com

WORKDIR /opt/
RUN wget -c https://example.lightbend.com/v1/download/play-java -O play-java.zip && \
unzip play-java.zip && \
rm play-java.zip && \
cd play-java && \
sbt run

EXPOSE 9000

CMD ["/opt/play-java/sbt", "run"]
