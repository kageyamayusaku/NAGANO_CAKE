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

Genre.create!(
   name: "ケーキ"
 )

Item.create!(
 [
  {
   genre_id: 1,
   name: 'シュトーレン',
   introduction: 'ドイツ発祥のケーキ。保存が効くため、クリスマスのカウントダウンとして食べる。',
   price: '2980',
   is_active: true
  },
  {
   genre_id: 1,
   name: 'ザッハトルテ',
   introduction: '古典的なチョコレートの一種。',
   price: '3980',
   is_active: false
  }
 ]
)

Order.create!(
 [
  {
   customer_id: 1,
   postal_code: '468-0000',
   address: '名古屋市天白区',
   name: '影山勇作',
   shipping_cost: '1000',
   total_payment: '3500',
   payment_method: 0,
   status: 0,
  },
  {
   customer_id: 2,
   postal_code: '468-1111',
   address: '名古屋市緑区',
   name: '則定南菜子',
   shipping_cost: '2000',
   total_payment: '4500',
   payment_method: 1,
   status: 1,
  }
 ]
)

OrderDetail.create!(
 [
  {
   item_id: 1,
   order_id: 1,
   price: '3500',
   amount: 1,
   making_status: 0,
  },
  {
   item_id: 2,
   order_id: 2,
   price: '4500',
   amount: 2,
   making_status: 1,
  }
 ]
)
