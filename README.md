# アプリケーション名
game matching

# アプリケーション概要
・コンセプト  ゲーム名で円滑にPT募集をかける事が出来る
・ターゲット  10代後半〜30代前半、男性の割合多い
<img width="1440" alt="822be929a3ba60a4a55259a681ccd63a" src="https://user-images.githubusercontent.com/77272798/121966323-66098880-cda9-11eb-8704-fa36a90dd916.png">

# 実装済み機能
・ユーザー管理機能（単体テストコード有）
・ルーム作成機能
・ルーム一覧表示機能
・チャット機能

# 実装予定機能
・herokuへアップ後、表示が崩れているため修正中
・チャット追加機能（リアルタイムで表示）
・ルーム追加機能（ルームに人数制限）
・一覧表示追加機能（ゲーム別に絞り込む）
・ユーザー詳細ページ作成

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| profile            | text   | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## rooms テーブル

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | string  | null: false |
| game_id     | integer | null: false |
| platform_id | integer | null: false |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user