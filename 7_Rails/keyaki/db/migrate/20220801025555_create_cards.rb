class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :address
      t.date :birthday

      t.timestamps
    end
  end
end
