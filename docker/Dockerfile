FROM alpine:latest

RUN apk add cmake

ARG MAKEFLAGS=-j8

WORKDIR /grpc

RUN git clone https://github.com/grpc/grpc . \
    && git submodule update --init --recursive

WORKDIR /grpc/cmake/build

RUN cmake ../.. \
    && make protoc grpc_php_plugin \
