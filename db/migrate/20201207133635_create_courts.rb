class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :address
      t.belongs_to :employee_working, foreign_key: true

      t.timestamps
    end
    add_index :courts, :name, unique: true
  end
end
