FROM quay.io/drsylent/cubix/block2/homework-base:java21 as frontappIamge
RUN mkdir /opt/app/ 

LABEL cubix.homework.owner="Jozsef Nagy" application="frontapp"
ENV CUBIX_HOMEWORK="Jozsef Nagy"
ENV APP_DEFAULT_MESSAGE=
WORKDIR /opt/app/
COPY /target/*.jar frontapp.jar
CMD ["java", "-jar", "frontapp.jar"]


FROM quay.io/drsylent/cubix/block2/homework-base:java21 as backapImage
RUN mkdir /opt/app/

LABEL cubix.homework.owner="Jozsef Nagy" application="backapp"
ENV CUBIX_HOMEWORK="Jozsef Nagy"
ENV APP_DEFAULT_MESSAGE=
EXPOSE 8081
WORKDIR /opt/app/
COPY /target/*.jar backapp.jar
CMD ["java", "-jar", "backapp.jar"]
