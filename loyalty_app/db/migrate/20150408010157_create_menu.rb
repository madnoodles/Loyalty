class CreateMenu < ActiveRecord::Migration
  def up
    create_table :menus do |t|
      t.integer :retail_id, :null => false
      t.string :name, :null => false
      t.integer :price, :null => false
      t.timestamps
    end
    add_index "menus",["retail_id", "name"]
  end

  def down
  	drop_table :menus
  end
end
