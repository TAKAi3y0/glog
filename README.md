# アプリケーション名

glog  

# アプリケーション概要

BLOGアプリケーションを作成しました。  

# URL

http://54.168.105.34/

# 利用方法

WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。  
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。  
新規作成→フォーム入力→CreateArticleで記事が作成できます。  

# 作成目的

ゲーム内の有用な情報を日々更新しやすいように、項目に沿って記録するため作りました。  
ゲームをプレイして動画を撮り編集する事を習慣づける事が難しいと感じたため、トリミングだけ行って文字と画像で簡単に記録できるサイトがあると便利だなと考えました。

# これからの課題

・ユーザー登録機能実装(4/23予定)  
・記事のView編集(4/23予定)  
・記事のタグ付け機能実装(4/30予定)  
・コメント機能実装(4/30予定)  
・自己紹介ページ作成(4/30予定)

# データベース設計(ER図)

<img width="262" alt="084274ca74aecbe899802f164ed392cf" src="https://user-images.githubusercontent.com/73812712/106860383-a7a56b00-6707-11eb-9072-6c3cb743f7bc.png">

# ローカルでの動作方法

Rubyのバージョン  
2.6.5  
  
追加パッケージ  
・mini_magick  
・image_processing  
・pry-rails  
・rspec-rails  
・factory_bot_rails  
・faker  
・unicorn  
・aws-sdk-s3  
・capistrano  
・bootstrap  
・popper.js

# テーブル設計

## articles テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| text        | text       | null: false                    |
| image       | string     |                                |
| youtube_url | string     |                                |

## users テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| nickname    | string     | null: false                    |
| email       | string     | null: false                    |
| password    | string     | null: false                    |