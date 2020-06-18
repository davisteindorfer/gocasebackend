class CreateBatches < ActiveRecord::Migration[6.0]
  def change
    create_table :batches, {:id => false} do |t|
      t.string :reference, null: false
      t.string :purchase_channel, null: false
      t.text :group_of_orders, array:true, default: [], null:false
      t.timestamps
    end
    execute "ALTER TABLE batches ADD PRIMARY KEY (purchase_channel);"
  end
end
