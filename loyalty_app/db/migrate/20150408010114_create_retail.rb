class CreateRetail < ActiveRecord::Migration
  def up
    create_table :retails do |t|
      t.string   :login,                                   :null => false
      t.string   :name,                                    :null => false
      t.string   :crypted_password,                        :null => false
      t.string   :password_salt,                           :null => false
      t.string   :persistence_token,                       :null => false
      t.string   :single_access_token,                     :null => false
    	t.integer :zipcode,                                  :null => false
    	t.timestamps
    end
    add_index :retails, :name
  end

  def down
  	drop_table :retails
  end
end
