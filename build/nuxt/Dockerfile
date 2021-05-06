FROM node:12.16.3

RUN apt-get update \
    && apt-get install -y less vim xterm locales \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* \
    && sed -i -e 's/# \(ja_JP.UTF-8\)/\1/' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8

# rancher の不具合により、resize を実行するため xterm が必要。
# rancher のシェルで画面サイズがおかしい場合は resize を実行すること。

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

EXPOSE 3000
ENV HOST 0.0.0.0

CMD ["npm", "run", "dev"]
