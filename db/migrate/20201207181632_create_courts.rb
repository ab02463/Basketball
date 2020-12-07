class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :address
      t.belongs_to :employee, foreign_key: true

      t.timestamps
    end
    add_index :courts, :name, unique: true
    add_index :courts, :address, unique: true
  end
end
