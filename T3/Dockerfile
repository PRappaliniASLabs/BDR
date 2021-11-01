FROM openjdk:8-jdk-alpine

ENV JAVA_OPTS="-Xmx128m -Xms128m -Dhttp.port=30030 -jar /opt/BDR_APP/testappserver.jar /opt/BDR_APP/3rdTierconfig.xml"

COPY ./3rdTierconfig.xml /opt/BDR_APP/3rdTierconfig.xml
COPY ./testappserver.jar /opt/BDR_APP/testappserver.jar

VOLUME /tmp

EXPOSE 30030

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS" ]
