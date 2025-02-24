# Étape 1 : Build
FROM maven:3.8.5-openjdk-17 AS build
LABEL authors="dsanchez"

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier pom.xml et télécharger les dépendances
COPY pom.xml .
RUN mvn dependency:go-offline

# Copier le reste du code source
COPY src ./src

# Compiler le projet et générer le fichier .jar
RUN mvn package -DskipTests

# Étape 2 : Runtime
FROM openjdk:17

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier .jar depuis l'étape de build
COPY --from=build /app/target/*.jar app-devops.jar

# Exposer le port
EXPOSE 80

# Commande pour exécuter l'application
CMD ["java", "-jar", "app-devops.jar", "--server.port=80"]
