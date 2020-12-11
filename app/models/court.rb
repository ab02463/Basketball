class Court < ApplicationRecord
  belongs_to :employee
  has_one :order
end
