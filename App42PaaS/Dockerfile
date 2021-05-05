FROM openjdk:11-jdk
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y
WORKDIR /app
RUN git clone https://github.com/mihasik69/App42PaaS.git
RUN rm /app/App42PaaS/WebContent/Config.properties
COPY . ./app/App42PaaS/WebContent
RUN mvn install -f App42PaaS/pom.xml
