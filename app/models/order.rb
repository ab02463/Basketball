class Order < ApplicationRecord
  belongs_to :Court
  belongs_to :user

  scope :user_orders, ->(user) {where(['user_id= ?', user.id])}
end
