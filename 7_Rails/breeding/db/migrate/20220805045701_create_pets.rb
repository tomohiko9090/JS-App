class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.references :owner, null: false, foreign_key: true
      t.string :kind
      t.string :name

      t.timestamps
    end
  end
end
