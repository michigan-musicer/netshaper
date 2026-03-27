FROM ubuntu:24.04

RUN apt-get update && apt-get install -y cmake g++ libboost-all-dev

COPY . /usr/src/http-server
WORKDIR /usr/src/http-server

RUN mkdir -p build/ && cd build/ && rm -rf * 
RUN cmake . && make

#change this to whatever port you choose to run your server on
ENV PORT=8080
EXPOSE ${PORT}

# remember to actually publish the port too

CMD ["/bin/bash", "entrypoint.sh"]
