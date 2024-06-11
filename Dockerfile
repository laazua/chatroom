## alpine基础镜像制作:
#   step 1: wget http://dl-cdn.alpinelinux.org/alpine/v3.19/releases/x86/alpine-minirootfs-3.19.1-x86.tar.gz
#   step 2: cat alpine-minirootfs-3.19.1-x86.tar.gz |podman import - alpine:3.19.1

FROM localhost/alpine:3.19.1

WORKDIR /app

RUN echo "https://mirrors.aliyun.com/alpine/v3.19/main" > /etc/apk/repositories \
    && echo "https://mirrors.aliyun.com/alpine/v3.19/community" >> /etc/apk/repositories \
    && apk add musl

COPY chatroom config/server.yaml . 

EXPOSE 8000

CMD ["./chatroom", "--config", "server.yaml"]

