FROM ubuntu:18.04
MAINTAINER haodong <halbertdong@gmail.com>

ENV LANG C.UTF-8
WORKDIR /
ADD install_FineBI5_1-CN-expect.sh ./

RUN apt-get update
RUN apt-get install curl expect -y
RUN curl -O https://fine-build.oss-cn-shanghai.aliyuncs.com/finebi/5.1/public/exe/spider/linux_unix_FineBI5_1-CN.sh
RUN /install_FineBI5_1-CN-expect.sh
RUN rm /linux_unix_FineBI5_1-CN.sh
RUN rm /install_FineBI5_1-CN-expect.sh

EXPOSE 37799
CMD sh -c "nohup /usr/local/FineBI5.1/bin/finebi"
