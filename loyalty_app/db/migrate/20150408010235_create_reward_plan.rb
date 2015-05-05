class CreateRewardPlan < ActiveRecord::Migration
  def up
    create_table :reward_plans do |t|
      t.integer :retail_id, :null=>false
      t.integer :points, :null=>false
      t.string :plan, :null=>false
      t.string :description, :null=>false
      t.integer :version, 	:default => 0
    end
    add_index "reward_plans",["retail_id"]
  end
  def down
  	drop_table :reward_plans
  end
end
