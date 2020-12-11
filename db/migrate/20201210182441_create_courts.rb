class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :adress
      t.belongs_to :employee, foreign_key: true

      t.timestamps
    end
    add_index :courts, :name, unique: true
  end
end
