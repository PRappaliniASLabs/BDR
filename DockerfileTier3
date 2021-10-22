FROM openjdk:8-jdk-alpine

# RUN addgroup -S devopsc && adduser -S javams -G devopsc
# USER javams:devopsc

ENV JAVA_OPTS="-Xmx128m -Xms128m -Dhttp.port=30030 -jar /opt/BDR_APP/testappserver.jar /opt/BDR_APP/3dTierconfig.xml"

# ARG JAR_FILE
# ADD ${JAR_FILE} app.jar
# use a volume is more efficient and speed that filesystem

COPY ./3dTierconfig.xml /opt/BDR_APP/3dTierconfig.xml
COPY ./testappserver.jar /opt/BDR_APP/testappserver.jar

VOLUME /tmp

EXPOSE 30030
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS" ]
