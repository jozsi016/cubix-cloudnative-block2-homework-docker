FROM quay.io/drsylent/cubix/block2/homework-base:java21
RUN mkdir /opt/app/ 

LABEL cubix.homework.owner="Jozsef Nagy"
ENV CUBIX_HOMEWORK="Jozsef Nagy"
ENV APP_DEFAULT_MESSAGE=
WORKDIR /opt/app/
COPY /target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]

