FROM openjdk:11-jdk
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y
WORKDIR /app
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git
RUN rm /app/App42PaaS-Java-MySQL-Sample/WebContent.Config.properties
COPY . ./app/App42PaaS-Java-MySQL-Sample/WebContent
RUN mvn package -f App42PaaS-Java-MySQL-Sample/pom.xml
