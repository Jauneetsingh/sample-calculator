FROM maven:3.6-alpine
RUN mkdir -p /opt/calculator
ADD . /opt/calculator
WORKDIR /opt/calculator
RUN mvn package
CMD java -jar target/calculator-1.0.0.jar
