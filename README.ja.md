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

dc.production up -d

# ビルド

# 作者

S.Nakamura
