FROM java:8
MAINTAINER Morten Olsrud
VOLUME /tmp
ADD twittersentiment_frontend.jar frontend.jar
RUN bash -c 'touch /frontend.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/frontend.jar"]