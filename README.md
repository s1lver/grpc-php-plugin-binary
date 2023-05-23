# grpc-php-plugin-binary
Binary grpc_php_plugin for protoc utils

## Install

```bash
composer require s1lver/grpc-php-plugin-binary "^1.0.0"
```

or add

```
"s1lver/grpc-php-plugin-binary": "^1.0.0"
```

## How to compile

https://github.com/grpc/grpc/tree/v1.55.0/src/php#grpc_php_plugin-protoc-plugin

```bash
git clone -b v1.53.0 https://github.com/grpc/grpc
cd ./grpc/
git submodule update --init
mkdir -p cmake/build
cd cmake/build
cmake ../..
make protoc grpc_php_plugin
```

## Version matching

| gRPC version | Plugin binary version |
|--------------|-----------------------|
| v1.53.0      | 1.0.0                 |