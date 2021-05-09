lemp-node

# 概要

主に Nuxt.js + Laravel の環境を構築するための、
linuxt、nginx、MySQL、PHP、Node.js が動作するコンテナ郡。

# 使い方

開発時は通常の docker-compose を実行します（予定）。
docker-compose を実行すると、Nuxt.js、Laravel のソースをマウントした状態でコンテナを起動します。

本番環境は・・・

本番環境と同等の状態をローカルで動作させるには、production モードでコンテナを起動します。
production モードでコンテナを起動するには、docker-compose.production.yml ファイルを指定してコンテナを起動するか、
docker-compose.production.yml ファイルを指定する dc.production.bat を使用します。

```
dc.production up -d
```

# インストール

# 新規インストール

Github から本プロジェクトをクローンします。
本プロジェクトのルートディレクトリから volumes に入ります。

```
cd volumes
```

## Laravel のインストール

```
composer create-project laravel/laravel laravel
```

## Nuxt のインストール


# ビルド

Nginx が動作するコンテナイメージ、Nuxt.js を実行する Node.js が動作する環境のコンテナイメージ、
Laravel を実行する php が動作する環境のコンテナイメージをビルドします。
build.bat で 3 つのイメージをビルドできるようにしているので、build.bat を実行します。

ビルドが環境したら、イメージを DockerHub にプッシュします。
上記で作成したイメージ 3 つを一斉にプッシュする push.bat を実行します。

# デプロイ

https://github.com/feem-ltd/lemp-node からファイル一式をクローンもしくはダウンロードします。
次の内容の .env を作成します。

```
DOCKER_MAP_PORT=80
API_URL=http://ec2-18-183-233-170.ap-northeast-1.compute.amazonaws.com
```

DOCKER_MAP_PORT には接続を受けるポート番号を指定します。
API_URL にはサイトの URL を指定します。
API_URL は、Nuxt.js が Ajax 通信するのに利用します。

# 起動

docker-compose.production.yml ファイルを指定して起動します。

```
docker-compose -f docker-compose.production.yml up -d
```

# 作者

S.Nakamura
