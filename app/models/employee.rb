class Employee < ApplicationRecord
  has_one :court
  has_many :employee_email
end
