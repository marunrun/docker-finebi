# Docker for [FineBI](https://finebi.com) 5.1

![License MIT](https://img.shields.io/badge/license-MIT-blue.svg) [![Build Status](https://travis-ci.org/jwilder/nginx-proxy.svg?branch=master)](https://travis-ci.org/haodong/docker-finebi) [![](https://img.shields.io/docker/stars/haodong/docker-finebi.svg)](https://hub.docker.com/r/haodong/docker-finebi 'DockerHub') [![](https://img.shields.io/docker/pulls/haodong/docker-finebi.svg)](https://hub.docker.com/r/haodong/docker-finebi 'DockerHub')

## Usage

```shell
docker network create nginx-proxy
docker-compose up -d
```

1. Add "your_ip bi.com" to your hosts file.
2. Then visit [this page](http://bi.com/webroot/decision/login/initialization) to start.
