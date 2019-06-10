FROM maven:3.6.0 AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

EXPOSE 8080
CMD java -jar target/storm-tracker-0.0.1-SNAPSHOT.jar
