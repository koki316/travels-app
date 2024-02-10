## usersテーブル

| Column               | Type     | Option                   |
| -------------------- | -------- |------------------------- |
| nickname             | string   | null:false,              |
| age                  | integer  | null:false,              |
| email                | string   | null:false, unique: true |
| encrypted_password   | string   | null:false               |

### Association

- has_many :travels

## travelsテーブル

| Column               | Type        | Option                         |
| -------------------- | ----------- |------------------------------- |
| title                | string      | null:false                     |
| description          | text        | null:false                     |
| category_id          | integer     | null:false                     |
| place                | integer     | null:false                     |
| date                 | string      | null:false                     |
| user                 | references  | null:false, foreign_key: true  |

### Association

- belongs_to :user