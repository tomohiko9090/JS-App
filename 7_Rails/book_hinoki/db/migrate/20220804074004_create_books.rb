class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, limit: 100, null: false
      t.string :author, limit: 100
      t.string :publisher, limit: 100
      t.text :review

      t.timestamps
    end
  end
end
