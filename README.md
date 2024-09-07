# アプリケーション名 
my training

# URL


## User名

|Column                |Type    |Options|
| Column               | Type   | Options     |
| ------------------   | ------ | ----------- |
| name                 | string | null: false |
| email                | string | null: false,unique: true |
| encrypted_password   | string | null: false |  
 records : has many



## Exerciseテーブル

| Column               | Type        | Options     |
| -----------------    | ------      | ----------- |
| name                 | string      | null: false |
| description          | text        | null: false |
| category             | enum        | null: false |
records : has many





##　Recordテーブル

| Column         | Type       | Options                        |
| ------         | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| exercise       | references | null: false, foreign_key: true |
| date           |  date      | null: false                    |
|duration        | int        | null: false                    |

user belongs to
exercise belongs to












This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
