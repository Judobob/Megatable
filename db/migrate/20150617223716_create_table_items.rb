class CreateTableItems < ActiveRecord::Migration
  def change
    create_table :table_items do |t|
      t.integer :item_table_id
      t.text :value

      t.timestamps null: false
    end
  end
end
