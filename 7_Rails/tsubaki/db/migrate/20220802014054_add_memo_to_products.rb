class AddMemoToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :memo, :string
  end
end
