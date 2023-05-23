FROM alpine:latest

# Installing the main image packages
RUN apk add cmake git make g++

ARG MAKEFLAGS=-j8

WORKDIR /grpc

ARG GRPC_VERSION

RUN git clone -b ${GRPC_VERSION} https://github.com/grpc/grpc . \
    && git submodule update --init --recursive

WORKDIR /grpc/cmake/build

RUN cmake ../.. \
    && make protoc grpc_php_plugin \

CMD ["sleep", "infinity"]
