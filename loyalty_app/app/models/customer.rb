class Customer < ActiveRecord::Base
  has_many :transaction, :foreign_key => 'customer_id'
end