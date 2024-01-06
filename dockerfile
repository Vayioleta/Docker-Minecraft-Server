FROM openjdk:latest
WORKDIR /data
RUN echo "eula=true" > eula.txt
CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar"]
