# Docker for [FineBI](https://www.finebi.com)

![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://images.microbadger.com/badges/version/haodong/finebi.svg)
[![Build Status](https://travis-ci.org/haodong/docker-finebi.svg?branch=master)](https://travis-ci.org/haodong/docker-finebi)
[![Layers](https://images.microbadger.com/badges/image/haodong/finebi.svg)](https://microbadger.com/images/haodong/finebi "Get your own image badge on microbadger.com")
[![Stars](https://img.shields.io/docker/stars/haodong/finebi.svg)](https://hub.docker.com/r/haodong/finebi 'DockerHub')
![Pulls](https://shields.beevelop.com/docker/pulls/haodong/finebi.svg?style=flat-square)

## Intro

- This is a personal work for FinBI, a great BI server platform.
- For more, visit [their homepage](https://www.finebi.com/)
- Please don't hesitate to star me if feeling good.

## Simple Running

```shell
docker pull haodong/finebi
docker run --expose=37799 haodong/finebi:latest
```

Open [this page](http://localhost:37799/webroot/decision) to start.

## Extended Running

```shell
docker network create nginx-proxy
docker-compose up -d
```

1. Add "yourIP bi.com" to your hosts file.
2. Then visit [this page](http://bi.com/webroot/decision/login/initialization) to start.
