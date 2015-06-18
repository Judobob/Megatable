class CreateTableData < ActiveRecord::Migration
  def change
    create_table :table_data do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
