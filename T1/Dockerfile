FROM openjdk:8-jdk-alpine

ENV JAVA_OPTS="-Xmx128m -Xms128m -Dhttp.port=30010,30011 -jar /opt/BDR_APP/testappserver.jar /opt/BDR_APP/1stTierconfig.xml"

COPY ./1stTierconfig.xml /opt/BDR_APP/1stTierconfig.xml
COPY ./testappserver.jar /opt/BDR_APP/testappserver.jar

VOLUME /tmp

EXPOSE 30010 30011

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS" ]

