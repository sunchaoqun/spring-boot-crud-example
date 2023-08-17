# spring-boot-crud-example

compile 

mvn install

test

mvn spring-boot:run

# AWS

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/s0k4s5w7

docker build -t jmeter-test .

docker tag jmeter-test:latest public.ecr.aws/s0k4s5w7/jmeter-test:latest

docker push public.ecr.aws/s0k4s5w7/jmeter-test:latest

# Docker

docker login

docker tag jmeter-test:latest sunchaoqun/jmeter-test:latest

docker push sunchaoqun/jmeter-test:latest

