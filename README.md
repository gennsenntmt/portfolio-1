# README

## Description
 学習塾での使用を想定した、「生徒指導報告書」作成アプリです。
 授業を行なった講師(user)が、手軽に報告書を作成できるようにしています。
 報告書の作成から、報告書の一覧表示・検索・編集を再現しています。


## Features
- HAML/SASS記法とBEMの命名規則に基づいたマークアップ
- RSpecを使った単体テスト
- Herokuへのデプロイ
- enumを使用したDBアプローチ
- 管理者(admin)を利用したuser制限
- Jqueryによる非同期検索・スクロール機能

## Requirement
- Ruby 2.5.1
- Rails 5.2.3

<!-- ## Installation
  $ git clone http://github.com/kooo0401/freemarket_sample_62a.git
  $ cd freemarket_sample_62a
  $ bundle install -->

## Author
hideaki takahashi

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|password|string|null: false|
|admin|integer|

### Association
- has_many :reports


## studentsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|grade|integer|null: false|
|english|integer|
|math|integer|
|japanese|integer|
|science|integer|
|social_studies|integer|

### Association
- has_many :reports


## reportsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|description|text|null: false|
|homework|text|null: false|
|day|date|null: false|
|subject|integer|null: false|
|other|text|
|user_id|integer|null: false|
|student_id|integer|null: false|
|pricipal|integer|

### Association
- belongs_to :user
- belongs_to :student