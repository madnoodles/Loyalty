class CreateCustomer < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.string   :login,                                   :null => false
      t.string   :name,                                    :null => false
      t.string   :crypted_password,                        :null => false
      t.string   :password_salt,                           :null => false
      t.string   :persistence_token,                       :null => false
      t.string   :single_access_token,                     :null => false
      t.integer :zipcode
      t.integer :total_points
      t.timestamps
    end
  end
  def down
  	drop_table :customers
  end
end
