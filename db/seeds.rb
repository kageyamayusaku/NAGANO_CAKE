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
 [
  {
   last_name: '影山',
   first_name: '勇作',
   last_name_kana: 'カゲヤマ',
   first_name_kana: 'ユウサク',
   email: 'b@b',
   password: 'bbbbbb',
   address: '名古屋市天白区',
   postal_code: '468-0000',
   telephone_number: '090-5613-1902',
   is_deleted: false
  },
  {
   last_name: '則定',
   first_name: '南菜子',
   last_name_kana: 'ノリサダ',
   first_name_kana: 'ナナコ',
   email: 'c@c',
   password: 'cccccc',
   address: '名古屋市緑区',
   postal_code: '468-1111',
   telephone_number: '090-1111-1111',
   is_deleted: true
  }
 ]
)

#Item.create!(
#   genre_id: '1',
#   name: 'シュトーレン',
#   introduction: 'ドイツ発祥のケーキ。保存が効くため、クリスマスのカウントダウンとして食べる。',
#   price: '2980',
#   is_active: 'true'
#)