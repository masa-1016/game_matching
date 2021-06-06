# アプリケーション名
game_matching

# アプリケーション概要
・コンセプト  バトルロワイヤル系（三人一組）のゲームで円滑にPT募集をかける事が出来る
・ターゲット  10代後半〜30代前半、男性の割合多い

# 実装予定機能
・ユーザー管理機能
・ルーム作成機能（上限三人）
・チャット機能（リアルタイムで表示）
・一覧表示をゲーム別に絞り込む
・ユーザー詳細ページ

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| profile            | text   | null: false |

### Association

- belongs_to :room
- has_many :messages

## rooms テーブル

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | string  | null: false |
| game_id     | integer | null: false |
| platform_id | integer | null: false |

### Association

- has_many :users
- has_many :messages

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user