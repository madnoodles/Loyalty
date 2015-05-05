class Transaction < ActiveRecord::Base
  belongs_to :retail
  belongs_to :customer
  belongs_to :reward_plan

end