FROM ubuntu:latest

RUN ls -l

COPY ./bin/rest-api /usr/local/bin/rest-api

RUN apt update -y && apt upgrade -y && apt install libfreetype6-dev -y

RUN chmod +x /usr/local/bin/rest-api

EXPOSE 8080

#ENTRYPOINT ["spring-native-orchestration"]
CMD ["./usr/local/bin/rest-api"]