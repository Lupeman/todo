class Items < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |table|
      table.string :description, null: false
      table.timestamps
    end  
  end
end
