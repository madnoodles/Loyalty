class CreateRetailNews < ActiveRecord::Migration
  def up
    create_table :retail_news do |t|
      t.integer :retail_id, :null=>false
      t.string  :news, :null=>false
    end
    add_index "retail_news",["retail_id","news"]
  end
  def down
  	drop_table :retail_news
  end
end
