class CreateTransactions < ActiveRecord::Migration
  def up
    create_table :transactions do |t|
    	t.integer :customer_id, :null=>false
    	t.integer :retail_id, :null=>false
    	t.integer :points, :null=>false
    	t.string :type, :null=>false
    	t.integer :reward_plan_id, :null=>false
    	t.timestamps
    end
    add_index :transactions, [:customer_id, :retail_id]
  end
  def down
  	drop_table :transactions
  end
end
