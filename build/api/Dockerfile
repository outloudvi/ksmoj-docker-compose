FROM alpine:3.13

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc -o /usr/local/bin/mc

RUN chmod +x /usr/local/bin/mc && \
    sed -i 's/dl-cdn.alpinelinux.org/opentuna.cn/g' /etc/apk/repositories && \
    apk add git nodejs yarn && \
    git clone https://git.sr.ht/~outloudvi/ksmoj-ng /app --depth=1

WORKDIR /app
RUN yarn config set registry https://registry.npm.taobao.org --global && \
    yarn config set disturl https://npm.taobao.org/dist --global && \
    yarn

RUN wget https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait -O /usr/local/bin/wait && \
    chmod +x /usr/local/bin/wait

ADD firstrun.sh /

ENV SYZOJ_NG_CONFIG_FILE=/app/config.yaml

CMD [ "/bin/sh", "/firstrun.sh" ]
