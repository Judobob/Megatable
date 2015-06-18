class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.text :name
      t.text :url
      t.integer :api_type_id
      t.integer :request_type_id

      t.timestamps null: false
    end
  end
end
