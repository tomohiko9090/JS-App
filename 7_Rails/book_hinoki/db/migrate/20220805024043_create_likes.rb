class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
      t.index [:user_id, :book_id], unique: true
    end
  end
end
