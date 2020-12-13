class Court < ApplicationRecord
  belongs_to :employee
  has_one :order
  validates :name, uniqueness: true
end
