# アプリケーション名

glog

# アプリケーション概要

BLOGアプリケーションを作成しました。

# URL

# 作成目的

ゲーム内の有用な情報を日々更新しやすいように、項目に沿って記録するため作りました。

# データベース設計(ER図)

<img width="434" alt="5452944e73711a36c0ae763ea7a41f91" src="https://user-images.githubusercontent.com/73812712/103096683-180c9700-4648-11eb-8826-a0494e4920f2.png">

# ローカルでの動作方法

Rubyのバージョン  
6.0.0

追加パッケージ  
・特になし

# テーブル設計

## articles テーブル

| Column       | Type       | Options                        |
| ----------   | ---------- | ------------------------------ |
| title        | string     | null: false                    |
| text         | text       | null: false                    |