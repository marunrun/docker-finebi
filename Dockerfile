FROM ubuntu:18.04
MAINTAINER haodong <halbertdong@gmail.com>

ENV LANG C.UTF-8
ENV TZ Asia/Shanghai
WORKDIR /
ADD install_FineBI5_1-CN-expect.sh ./

RUN apt-get update \
 && apt-get install curl expect -y \
 && curl -O https://fine-build.oss-cn-shanghai.aliyuncs.com/finebi/5.1.3/stable/exe/spider/linux_unix_FineBI5_1-CN.sh \
 && chmod 777 install_FineBI5_1-CN-expect.sh linux_unix_FineBI5_1-CN.sh \
 && /install_FineBI5_1-CN-expect.sh \
 && sed -i 's#nohup# #g' /usr/local/FineBI5.1/bin/finebi \
 && sed -i 's#> /dev/null 2>&1 &# #g' /usr/local/FineBI5.1/bin/finebi \
 && rm -rf /linux_unix_FineBI5_1-CN.sh \
 && rm -rf /install_FineBI5_1-CN-expect.sh

EXPOSE 37799

VOLUME [ "/usr/local/FineBI5.1/webapps/webroot" ]


CMD ["/usr/local/FineBI5.1/bin/finebi"]