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
| first_name _kana | string | null:false |
| birthday_date    | date   | null:false |

items テーブル

| Column           | Type    | Options    |
| ---------------- | ------- | ---------- |
| image            | string  | null:false |
| user             | string  | null:false |
| name             | string  | null:false |
| description      | text    | null:false |
| category         | integer | null:false |
| condition        | integer | null:false |
| shopping_charges | integer | null:false |
| delivery_area    | integer | null:false |
| days_to_delivery | integer | null:false |
| price            | integer | null:false |

purchases テーブル

| Column | Type       | Options                     |
| ------ | ---------- | --------------------------- |
| item   | references | null:false,foreign_key:true |
| user   | references | null:false,foreign_key:true |

addresses テーブル

| Column           | Type    | Options    |
| ---------------- | ------- | ---------- |
| card_information | string  | null:false |
| expiration       | integer | null:false |
| security_code    | integer | null:false |
| postal_code      | integer | null:false |
| prefectures      | string  | null:false |
| municipalities   | string  | null:false |
| house_number     | string  | null:false |
| building_name    | string  |            |
| phone_number     | integer | null:false |