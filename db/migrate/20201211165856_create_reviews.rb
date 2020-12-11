class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :review

      t.timestamps
    end
    add_index :reviews, :id, unique: true
    add_index :reviews, :user, unique: true
  end
end
