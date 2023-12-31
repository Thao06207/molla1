# FROM maven:3.8.3-openjdk-17-slim AS build
# COPY . .
# RUN mvn clean package -DskipTests

#  FROM openjdk:17.0.1-jdk-slim-bullseye
# COPY --from=build /target/MollaShop-0.0.1-SNAPSHOT.jar MollaShop.jar
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","MollaShop.jar"]

FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/MollaShop-0.0.1-SNAPSHOT.jar MollaShop.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","MollaShop.jar"]