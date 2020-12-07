class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :telephone

      t.timestamps
    end
    add_index :employees, :id, unique: true
    add_index :employees, :telephone, unique: true
  end
end
