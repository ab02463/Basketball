class CreateEmployeeEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_emails do |t|
      t.belongs_to :employee, foreign_key: true
      t.string :email

      t.timestamps
    end
  add_index :employee_emails, :employee, unique: true
  add_index :employee_emails, :email, unique: true
  end
end
