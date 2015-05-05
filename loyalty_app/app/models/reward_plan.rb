class RewardPlan < ActiveRecord::Base
 belongs_to :retail
 has_many :transaction


end