# <アプリ名>
self_employed

## サイト概要
会社の概要や事業内容の説明と仕事に関する質問や依頼が出来るようにお問い合わせ機能の実装

- 管理者側
  - お問い合わせ機能
    - ユーザーからのメールの確認
  - 予約機能
    - 予約登録(電話や口頭での予約に対応するため)
    - 予約の確認/承認機能
- ユーザー側機能
  - お問い合わせ機能
    - 仕事の質問や依頼に関するメール送信
  - 予約機能
    - 予約登録機能
　

### サイトテーマ
知らない人が見ても分かりやすいデザインのサイト

### テーマを選んだ理由
私の実家が自営業を営んでおり、プログラミングの勉強を始めた時に両親から会社のHP作成をお願いされたため、PFで作成しようと思いました

### ターゲットユーザ
同業者

### 主な利用シーン
仕事に関する質問や依頼をしたい時

## 設計書

'$ git clone https://github.com/20986tsuruma/self_employed
$ cd nagano-cake
$ rails db:seed
$ rails s -b 0.0.0.0'

管理者ページにログインする場合は、
管理者ログインページより、
メールアドレス：test@test.com
パスワード：testtest
を入力してください。

### 実装機能

### 機能一覧
https://docs.google.com/spreadsheets/d/1XrMrTUC1daZ8PSlsei6LSHUm7X7GyCLkmKLLtVHEUko/edit?usp=sharing

## 開発環境
- OS：Windows10(64ビット)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- 仮想環境：Vagrant,VirtualBox