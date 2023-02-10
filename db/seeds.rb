# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'a@a',
   password: 'aaaaaa'
)

Customer.create!(
   last_name: '影山',
   first_name: '勇作',
   last_name_kana: 'カゲヤマ',
   first_name_kana: 'ユウサク',
   email: 'b@b',
   password: 'bbbbbb',
   address: '名古屋市天白区',
   postal_code: '468-0000',
   telephone_number: '090-5613-1902',
   is_delete: 'false'
)