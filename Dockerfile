# FROM amazoncorretto:8u302
FROM amazonlinux:2


RUN yum install curl unzip net-tools wget tar telnet iputils procps -y
RUN amazon-linux-extras install java-openjdk11

RUN amazon-linux-extras install epel -y

RUN yum --enablerepo=epel install hping3 -y 

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN wget https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.6.2.tgz
RUN tar xzvf apache-jmeter-5.6.2.tgz


WORKDIR /app

COPY target/spring-boot-crud-example-2-0.0.1-SNAPSHOT.jar ./app.jar
COPY test.jmx ./test.jmx

CMD ["java","-jar","/app/app.jar"]
