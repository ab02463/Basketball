class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :Court, foreign_key: true, null:false
      t.belongs_to :user, foreign_key: true, null:false
      t.string :DateTime, null:false

      t.timestamps
    end
    add_index :orders, :id, unique: true
  end
end
