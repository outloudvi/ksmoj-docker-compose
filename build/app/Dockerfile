FROM alpine:3.13

RUN sed -i 's/dl-cdn.alpinelinux.org/opentuna.cn/g' /etc/apk/repositories && \
    apk add git nodejs yarn && \
    git clone https://git.sr.ht/~outloudvi/ksmoj-ng-app /app --depth=1

WORKDIR /app
RUN yarn config set registry https://registry.npm.taobao.org --global && \
    yarn config set disturl https://npm.taobao.org/dist --global && \
    yarn

CMD [ "yarn", "start" ]