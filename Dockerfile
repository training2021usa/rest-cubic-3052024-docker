#pulling java11 image from docker hub
#FROM adoptopenjdk/openjdk11

#pulling java8 image from docker hub

FROM adoptopenjdk/openjdk8:ubi

LABEL mentainer="prabballia@gmail.com"

#this folder is created inside docker container
WORKDIR /technohunk444


COPY  target/rest-cubic-03052023.war  /technohunk444/rest-cubic-03052023.war

expose 8080

ENTRYPOINT ["java", "-jar", "rest-cubic-03052023.war"]
