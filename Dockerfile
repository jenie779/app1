FROM adoptopenjdk/openjdk11:ubi
VOLUME /tmp
EXPOSE 80
ADD EMS_Web_App.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]