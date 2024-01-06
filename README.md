# Docker-Minecraft-Server
Este repositorio aloja los archivos necesarios para desplegar un servidor de Minecraft utilizando Docker Compose. Incluye un archivo docker-compose.yml con la configuración para levantar el servidor y un Dockerfile que establece la imagen y la configuración requerida para ejecutar el servidor de Minecraft.

**Contenido:**
- **Docker Compose:**
  - Archivo: `docker-compose.yml`
    ```yaml
    version: '3'
    services:
      minecraft:
        build:
          context: .
          dockerfile: Dockerfile
        ports:
          - "3000:25565"
        volumes:
          - "./data:/data"
        restart: unless-stopped
        deploy:
          resources:
            limits:
              memory: 2G
            reservations:
              memory: 1G
    ```
- **Dockerfile:**
  - Archivo: `Dockerfile`
    ```Dockerfile
    FROM openjdk:latest
    LABEL maintainer="tumantenedor@example.com"
    WORKDIR /data
    RUN echo "eula=true" > eula.txt
    CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar"]
    ```
Este repositorio está diseñado para desplegar un servidor de Minecraft utilizando Docker, con la configuración necesaria para su correcto funcionamiento y los recursos asignados para garantizar un rendimiento óptimo.
Recuerda colocar dentro de la carpeta data todos los archivos del servidor de minecraft a desplegar y cambiar el nombre del archivo por server.jar, tambien puedes modificar el dockerFile y cambiar el comando de despligue CMD cambiando los parametros de memoria maxima y minima asi como otros parametros adicionales para imagenes con modos como Forge o Fabric ♥
