FROM registry.access.redhat.com/ubi8/openjdk-17
LABEL maintainer="Movistar"
ARG APP_FILE_NAME
ARG APP_ENV
 
COPY ${APP_FILE_NAME} /app/app.jar
WORKDIR /app

USER root 
# Garantizar permisos de lectura para el UID no-root de OpenShift
RUN chmod 644 /app/app.jar
 
ENV JAVA_OPTS=""
 
# Usar sh -c para expansión de variables de entorno
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Dspring.profiles.active=$APP_ENV -jar /app/app.jar"]
