class CreateItemTables < ActiveRecord::Migration
  def change
    create_table :item_tables do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
