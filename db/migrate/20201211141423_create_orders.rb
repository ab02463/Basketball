class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :Court, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.datetime :DateTime

      t.timestamps
    end
    add_index :orders, :id, unique: true
  end
end
