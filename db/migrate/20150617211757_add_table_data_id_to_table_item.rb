class AddTableDataIdToTableItem < ActiveRecord::Migration
  def change
    add_column :table_items, :table_data_id, :integer
  end
end
