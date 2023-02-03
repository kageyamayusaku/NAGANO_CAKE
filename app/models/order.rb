class Order < ApplicationRecord
  enum payment_method:{credit: 0, bank: 1}
  enum status:{
    waiting: 0,
    confirm: 1,
    production: 2,
    preparation: 3,
    done: 4
  }
end
