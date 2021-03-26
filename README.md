# 概要

ローカルで、clickhouseの開発環境を作ってみました。

# 構成

```base
├── config               (clickhouseの設定ファイルのマウント先)
├── database             (clickhouseのデータベースファイル)
├── docker-compose.yml   (docker-compse.ymlファイル)
├── houseclient          (clickhouse-cliをインストール済のコンテナ)
└── lighthouse           (clickhouseのread-onlyクエリを実行できるUI)
```

# アクセス
  clickhouseへアクセスするために、三つツールを使ってみました。

## lighthouse
 インストールはすごく簡単ですが、readonlyのクエリしか実行できないため、`create table`、`create database`など実行したい場合は不便だと思いました。
 使い方はブラウザを使って、`./lighthouse/index.html`ファイルを開くだけ。[詳細](./lighthouse/README.md)

 ![LightHouse](/doc/lighthouse.png)

## tabix
  これはインストールする必要ですが、dockerを使えば、すぐできました。

* アクセス
  ```
  http://localhost:8888/
  ```
* httpアクセスの設定

  ![taxi](/doc/taxi-access.png)

* テーブルの作成

  ![taxi](/doc/taxi.png)

## clickhouse-cli
  コマンドでクエリを行う感じです。アクセスコマンドを使って、リモートアクセスする感じです。

  ```bash
  docker exec -it hc clickhouse-cli -h clickhouse.local.me -p 8123 -u default
  ```
