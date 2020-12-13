class EmployeeEmail < ApplicationRecord
  belongs_to :employee
  validates :email, presence: true
  validates :email, uniqueness: true
end
