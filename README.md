＃テーブル設計

users テーブル

| Column           | Type   | Options    |
| ---------------- | ------ | ---------- |
| nickname         | string | null:false |
| email            | string | null:false |
| password         | string | null:false |
| last_name        | string | null:false |
| first_name       | string | null:false |
| last_name_kana   | string | null:false |
| first_name_kana  | string | null:false |
| birthday_date    | date   | null:false |

Association

- has_many :item
- has_many :purchase

items テーブル

| Column              | Type        | Options                     |
| ------------------- | ----------- | --------------------------- |
| user                | references  | null:false,foreign_key:true |
| name                | string      | null:false                  |
| description         | text        | null:false                  |
| category_id         | integer     | null:false                  |
| condition_id        | integer     | null:false                  |
| shopping_charges_id | integer     | null:false                  |
| delivery_area_id    | integer     | null:false                  |
| days_to_delivery_id | integer     | null:false                  |
| price               | integer     | null:false                  |

Association

- belongs_to :user
- has_one : purchase

purchases テーブル

| Column | Type       | Options                     |
| ------ | ---------- | --------------------------- |
| item   | references | null:false,foreign_key:true |
| user   | references | null:false,foreign_key:true |

Association

- belongs_to :user
- belongs_to :item
- has_one :addresse

addresses テーブル

| Column           | Type       | Options                     |
| ---------------- | ---------- | --------------------------- | 
| postal_code      | string     | null:false                  |
| prefectures      | integer    | null:false                  |
| municipalities   | string     | null:false                  |
| house_number     | string     | null:false                  |
| building_name    | string     |                             |
| phone_number     | string     | null:false                  |
| purchase         | references | null:false,foreign_key:true |

Association

- belongs_to :purchase