# grpc-php-plugin-binary

[![Latest Stable Version](https://poser.pugx.org/s1lver/grpc-php-plugin-binary/v/stable.svg)](https://packagist.org/packages/s1lver/grpc-php-plugin-binary)
[![Total Downloads](http://poser.pugx.org/s1lver/grpc-php-plugin-binary/downloads)](https://packagist.org/packages/s1lver/grpc-php-plugin-binary)

Binary grpc_php_plugin for protoc utils

## Install

```bash
composer require s1lver/grpc-php-plugin-binary "^1.0.0"
```

or add

```
"s1lver/grpc-php-plugin-binary": "^1.0.0"
```

## How to use

```bash
cp /your_repo/vendor/bin/grpc_php_plugin /usr/local/bin/grpc_php_plugin

protoc -I . \
       --php_out=your/path \
       --grpc_out=your/path \
       --plugin=protoc-gen-grpc=`which grpc_php_plugin` \
       your/path/proto.proto 
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

| gRPC version | Plugin binary version | Architecture |
|--------------|-----------------------|--------------|
| v1.53.0      | 1.0.0                 | x86          |