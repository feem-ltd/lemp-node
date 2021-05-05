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

# アプリケーションの依存関係をインストールする
# ワイルドカードを使用して、package.json と package-lock.json の両方が確実にコピーされるようにします。
# 可能であれば (npm@5+)
COPY volumes/nuxt/package*.json ./
COPY volumes/nuxt/yarn.lock ./
COPY build/nuxt/init.sh ./

RUN yarn install
# 本番用にコードを作成している場合
# RUN npm install --only=production

# アプリケーションのソースをバンドルする
COPY volumes/nuxt .

EXPOSE 3000
ENV HOST 0.0.0.0

# CMD ["npm", "run", "dev"]
# CMD ["npm", "run", "dev:stg"]
# CMD ["npm", "run", "bstart"]
RUN yarn run build
CMD ["yarn", "run", "start"]
# CMD ["/bin/bash", "/usr/src/app/init.sh"]
