class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders, {:id => false} do |t|
      t.string :reference, null: false
      t.string :purchase_channel, null: false
      t.string :client_name, null: false
      t.string :adress, null: false
      t.string :delivery_service, null: false
      t.integer :total_value_RS, null: false
      t.string :line_items, array: true,default: [], null: false
      t.string :status, null: false
      t.belongs_to :batches
      t.timestamps
    end
    execute "ALTER TABLE orders ADD PRIMARY KEY (reference);"
  end
end
