FROM openjdk:8-jdk-alpine

ENV JAVA_OPTS="-Xmx128m -Xms128m -Dhttp.port=30020 -jar /opt/BDR_APP/testappserver.jar /opt/BDR_APP/2ndTierconfig.xml"

COPY ./2ndTierconfig.xml /opt/BDR_APP/2ndTierconfig.xml
COPY ./testappserver.jar /opt/BDR_APP/testappserver.jar

VOLUME /tmp

EXPOSE 30020

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS" ]
