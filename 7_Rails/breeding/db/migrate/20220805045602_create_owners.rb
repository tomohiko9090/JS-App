class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :owner_name

      t.timestamps
    end
  end
end
