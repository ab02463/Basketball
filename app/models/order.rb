class Order < ApplicationRecord
  belongs_to :Court
  belongs_to :user
end
